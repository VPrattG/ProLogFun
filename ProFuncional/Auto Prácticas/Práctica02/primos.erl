%% --------------------------------------------------------------
%% Módulo: primos
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa pide un número y calcula la cantidad
%% de primos que son menores a este, usando múltiples procesos
%%
%% Corresponde al ejercicio 7 del capítulo 19: Programación Concurrente y Paralela
%%
%% Fecha: 30 de septiembre de 2024
%% --------------------------------------------------------------

-module(primos).
-export([main/0]).

% Parte en la que se reparte la carga laboral entre los procesos
calc_primos(Nums) when Nums > 1 ->
    % Se indica cuántos procesos se usarán
    % Por simplicidad, es un número fijo
    % Si se quiere usar la cantidad de procesadores del equipo, reemplazar el 4 por
    % max(1, erlang:system_info(logical_processors))
    Procesos = 4,
    % Cantidad de números que manejará cada proceso
    % div es lo contrario de rem, devuelve el coeficiente
    Porciones = max(1, (Nums - 1) div Procesos),
    % Quien administra los procesos
    GrandePadre = self(),
    % Se reparten los números entre los procesos
    Rangos = repartir(2, Nums, Porciones),
    % La lista con ids de cada proceso involucrado
    % || facilita la creación de la lista, Rangos indica los valores que estarán en cada parte de Rango
    Pids = [spawn_link(fun() -> trabajador(GrandePadre, Rango) end) || Rango <- Rangos],

    % Se recolectan los resultados de los procesos
    recolectar(Pids, []).

% Ayuda en separar el rango en porciones
repartir(Ini, Fin, Porciones) ->
    repartir(Ini, Fin, Porciones, []).

% Si Ini excede el valor de Fin, es que se pasó a través de todo el rango
% Se devuelve la lista acumunlada de rangos, en orden inverso (que es el original)
repartir(Ini, Fin, _, Acu) when Ini > Fin ->
    lists:reverse(Acu);
% Parte donde se dividen los rangos
repartir(Ini, Fin, Porciones, Acu) ->
    % El inicio de la siguiente porción se calcula determinando el valor menor de Ini + Porciones
    % O Fin + 1, si es que Ini + Porciones llega a exceder a Fin
    SigIni = min(Ini + Porciones, Fin + 1),
    repartir(SigIni, Fin, Porciones, [{Ini, SigIni - 1} | Acu]).

% Se le dice al proceso qué hacer
trabajador(GrandePadre, {Ini, Fin}) ->
    % Se buscan los números primos en cada porción creada y asignada
    Primos = [N || N <- lists:seq(Ini, Fin), primo_o_no(N)],
    % Se reportan los resultados al proceso que administra todo.
    GrandePadre ! {self(), Primos}.

% Parte que recolecta los valores primos
recolectar([], Acu) ->
    % Se organiza la lista una vez que cada proceso reporta resultados
    % flatten convierte listas anidadas en una sola
    lists:sort(lists:flatten(Acu));
recolectar(Pids, Acu) ->
    % Se recibe un mensaje
    receive
        {Pid, Primos} ->
            % Se remueve el proceso revisado, se crea una nueva lista
            % Esta tiene los primos recibidos, seguido de los anteriores
            recolectar(Pids -- [Pid], [Primos | Acu])
    end.

% Parte donde se calcula si un número es primo o no
primo_o_no(2) ->
    % 2 es primo, no necesita de cálculo alguno
    true;
% Manejo de números menores a 2 o pares, que se se sabe que nunca son primos
% Con orelse, si el primer operando en un OR es verdadero, se omite el resto de la evaluación
primo_o_no(N) when N < 2 orelse N rem 2 == 0 -> false;
% Para cualquier otro número
primo_o_no(N) ->
    % Límite para calcular si es primo o no
    % Trunc remueve la parte decimal de la división
    LimSup = trunc(math:sqrt(N)),
    % Se revisa si el número es divisible entre impares hasta el valor de LimSup
    not lists:any(fun(I) -> N rem I == 0 end, lists:seq(3, LimSup, 2)).

main() ->
    % Se pide un número
    io:format("Ingrese un número para calcular los primos menores a este: "),
    case io:fread("", "~d") of
        {ok, [Nums]} when Nums > 1 ->
            % Para demostrar la velocidad de procesamiento, se obtiene el tiempo con timer:tc
            % usando la función para calcular los números primos (Puesta en tiempo)
            % Lista tiene todos los primos obtenidos
            {Tiempo, Lista} = timer:tc(fun() -> calc_primos(Nums) end),
            io:format("Primos encontrados ~p:~n~p~n", [Nums, Lista]),
            io:format("El cálculo tomó ~p microsegundos~n", [Tiempo]);
        % Mensaje a enviar si el número ingresado no es válido para obtener primos
        {ok, [Nums]} when Nums =< 1 ->
            io:format("~p No contiene primos de menor valor~n", [Nums]);
        % En caso de que no se haya ingresado un número primo
        _ ->
            io:format("Ingrese un número válido~n")
    end.
