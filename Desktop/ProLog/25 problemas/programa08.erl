%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime "hello, world" constantemente
%% hasta que haya una interrupción externa.
%%
%% Corresponde al ejercicio 50
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa08).
-export([cosa/0]).

cosa() ->
    X = #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]},
    io:format("~w~n", X).
