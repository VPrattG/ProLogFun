%% --------------------------------------------------------------
%% Módulo: programa08
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea un objeto mapa
%%
%% Corresponde al ejercicio 50
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa08).
-export([cosa/0]).

cosa() ->
    % Crea un mapa
    X = #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]},
    % Lo despliega
    io:format("~p~n", [X]).
