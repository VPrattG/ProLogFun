%% --------------------------------------------------------------
%% Módulo: programa23
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa toma un valor int, y lo convierte en
%% una cadena con formato de dos decimales, y la imprime
%%
%% Corresponde al ejercicio 23
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa23).
-export([int_to_str/1]).

int_to_str(X) ->
    % Establece el formato del int a que ahora sea una cadena.
    S = io_lib:format("~.2f", [float(X)]),
    io:format("Nueva cadena: ~p~n", [S]).
