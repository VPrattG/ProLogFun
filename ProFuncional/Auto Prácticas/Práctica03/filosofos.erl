%% --------------------------------------------------------------
%% Módulo: filosofos
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa simula el problema de los filósofos comiendo.
%% Basado en el siguiente repositorio: https://github.com/mistupv/dining-philos
%%
%% Corresponde al ejercicio 6 del capítulo 19: Programación Concurrente y Paralela
%%
%% Fecha: 30 de septiembre de 2024
%% --------------------------------------------------------------

-module(filosofos).
-export([main/0, inicializar/0, cubierto/1, filosofo/2]).

main() ->
    spawn(?MODULE, inicializar, []).

% Creación de cubiertos para usar
crear_cubierto(0, Lista) ->
    % Cuando no hayan más por hacer, se devuelve la lista
    Lista;
crear_cubierto(N, Lista) ->
    Par = {N, spawn(?MODULE, cubierto, [disponible])},
    % Se crean más cubiertos recursivamente, añadiéndolos a la lista
    crear_cubierto(N - 1, [Par] ++ Lista).

% Creación de filósofos
crear_filosofo(0, Lista, _) ->
    Lista;
crear_filosofo(N, Lista, Pid) ->
    % Se crea una lista que relaciona el id de un filósofo con el Pid de su proceso
    Par = {spawn(?MODULE, filosofo, [Pid, N]), N},
    % Se crean más filósofos recursivamente
    crear_filosofo(N - 1, [Par] ++ Lista, Pid).

% Parte uno. Inicializa los cubiertos y filósofos
inicializar() ->
    % El problema plantea 5 filósofos y cubiertos, por ende el 5
    ListaCub = crear_cubierto(5, []),
    ListaFil = crear_filosofo(5, [], self()),
    % Se empieza a realizar el proceso
    inicializarDos(ListaCub, ListaFil).

% Parte dos. Indica si los cubiertos están ocupados o libres
inicializarDos(ListaCub, ListaFil) ->
    % Se espera a que los filósofos envíen mensajes
    receive
        % Si el filósofo terminó de comer
        {comio, PidF} ->
            % Se obtiene su identificador
            IdFil = proplists:get_value(PidF, ListaFil),
            % El cubierto de la izquierda comparte el identificador
            IdCubIzq = IdFil,
            % Se obtiene el cubierto a la derecha con un módulo
            % El + 1 evita el cero cuando se use el id de 5
            IdCubDer = (IdCubIzq rem 5) + 1,
            % Se usa proplists para obtener los Pids de los cubiertos
            PidIzq = proplists:get_value(IdCubIzq, ListaCub),
            PidDer = proplists:get_value(IdCubDer, ListaCub),
            % Los cubiertos se indican como disponibles para usar
            indicar_estado(PidIzq, disponible),
            indicar_estado(PidDer, disponible);
        % Si el filósofo tiene hambre
        {hambre, PidF} ->
            % Igual que en "comio"
            IdFil = proplists:get_value(PidF, ListaFil),
            IdCubIzq = IdFil,
            IdCubDer = (IdCubIzq rem 5) + 1,
            PidIzq = proplists:get_value(IdCubIzq, ListaCub),
            PidDer = proplists:get_value(IdCubDer, ListaCub),
            % Para verificar si se puede cambiar de estado a comer
            EstCubIzq = pedir_estado(PidIzq),
            EstCubDer = pedir_estado(PidDer),
            % Comprobar el estado de los cubiertos
            case {EstCubIzq, EstCubDer} of
                {disponible, disponible} ->
                    indicar_estado(PidIzq, ocupado),
                    indicar_estado(PidDer, ocupado),
                    PidF ! comer;
                _ ->
                    PidF ! pensar
            end
    end,
    inicializarDos(ListaCub, ListaFil).

% Para buscar el estado del cubierto
pedir_estado(Pid) ->
    Pid ! {obtener_estado, self()},
    receive
        {estado, Estado, _} -> Estado
    end.

% Para indicar el estado del cubierto
indicar_estado(Pid, Estado) ->
    Pid ! {establecer_estado, Estado, self()},
    receive
        {establecido, _} -> ok
    end.

% Bucle principal del filósofo: Piensa, espera para comer, repetir
filosofo(PidMesa, IdFil) ->
    pensar(IdFil),
    espera_comiendo(PidMesa, IdFil),
    filosofo(PidMesa, IdFil).

% Se pone a pensar hasta un máximo de un segundo
pensar(IdFil) ->
    io:fwrite("El filósofo " ++ integer_to_list(IdFil) ++ " está pensado~n"),
    TiempoEspera = rand:uniform(1000),
    timer:sleep(TiempoEspera),
    ok.

% Se pone a comer un segundo
comido(IdFil) ->
    io:fwrite("El filósofo " ++ integer_to_list(IdFil) ++ " ha terminado de comer~n"),
    timer:sleep(1000),
    ok.

% Espera para comer hasta que pueda hacerlo
espera_comiendo(PidMesa, IdFil) ->
    io:fwrite("El filósofo " ++ integer_to_list(IdFil) ++ " tiene hambre~n"),
    PidMesa ! {hambre, self()},
    receive
        pensar ->
            pensar(IdFil),
            espera_comiendo(PidMesa, IdFil);
        comer ->
            comido(IdFil),
            PidMesa ! {comio, self()}
    end.

% Los procesos del cubierto
cubierto(Estado) ->
    % Recibe un mensaje de los cubiertos
    receive
        {obtener_estado, PidMesa} ->
            PidMesa ! {estado, Estado, self()},
            cubierto(Estado);
        {establecer_estado, EstadoNuevo, PidMesa} ->
            PidMesa ! {establecido, self()},
            cubierto(EstadoNuevo)
    end.
