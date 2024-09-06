%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa realiza una instrucción y pausa el proceso
%% por 5 segundos, para luego terminarlo.
%%
%% Corresponde al ejercicio 45
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(problema05).
-export([momazo/0]).

momazo() ->
    io:format("Vas a esperar 5 segundos~n"),
    timer:sleep(5000),
    io:format("Te lo dije~n").
