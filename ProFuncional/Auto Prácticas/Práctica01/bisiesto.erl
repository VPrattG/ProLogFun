%% --------------------------------------------------------------
%% Módulo: bisiesto
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa recibe un año por parte del usuario
%% y calcula si es un año bisiesto o no.
%%
%% Corresponde al ejercicio 3 del capítulo 10: Misceláneos
%%
%% Fecha: 30 de septiembre de 2024
%% --------------------------------------------------------------

-module(bisiesto).
-export([revisar/1, main/0]).

% Función para revisar si es bisiesto
revisar(A) ->
    if
        % Ignora los años bisiestos que no son divisibles entre 400
        % Estos años (1700, 1800, 1900, 2100...) no cuentan para evitar que el calendario deje de alinearse con la rotación de la Tierra
        % Enlace con información al respecto: https://airandspace.si.edu/stories/editorial/science-leap-year

        % andalso significa que se usa la evaluación McCarthy
        % -> Si el primer operando en un AND es falso, se omite el resto de la evaluación
        % -> Para OR, se usa orelse
        A > 0 andalso (A rem 4 == 0) andalso (A rem 100 /= 0 orelse A rem 400 == 0) ->
            io:format("Es bisiesto ~n");
        % Cuando no es bisiesto
        A > 0 ->
            io:format("No es bisiesto ~n");
        % Si es un número negativo o cero
        A =< 0 ->
            io:format("Ingrese un número mayor a cero ~n")
    end.

main() ->
    io:format("Ingresa un número para calcular si es bisiesto o no: "),
    % Aquí se lee el año ingresado por el usuario
    case io:fread("", "~d") of
        {ok, [A]} ->
            revisar(A);
        % Si lo ingresado no es un número (ej. hola), despliega un error
        {error, _} ->
            io:format("No es un número válido~n")
    end.
