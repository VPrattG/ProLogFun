%% --------------------------------------------------------------
%% Módulo: programa01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime "hello, world"
%%
%% Corresponde al ejercicio 01
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa01).
-export([hello_world/0]).

% Manera simple de imprimir el mensaje.
hello_world() -> io:format("~s~n", ["Hello, world!"]).
