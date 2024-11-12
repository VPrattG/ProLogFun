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

-module(problema01).
-export([bucle_hw/0]).

bucle_hw() ->
    io:fwrite("hello, world\n"),
    % La función se llama a sí misma
    bucle_hw().
