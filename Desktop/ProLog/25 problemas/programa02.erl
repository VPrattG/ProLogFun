%% --------------------------------------------------------------
%% Módulo: problema02
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime "hello, world" 10 veces
%%
%% Corresponde al ejercicio 02
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa02).
-export([diez_hw/0]).

diez_hw() ->
    lists:foreach(
        fun(_) ->
            io:format("Hello~n")
        end,
        lists:seq(1, 10)
    ).
