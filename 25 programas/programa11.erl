%% --------------------------------------------------------------
%% Módulo: programa11
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene un valor aleatorio de una lista
%% ingresada por el usuario
%%
%% Corresponde al ejercicio 11
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa11).
-export([valor_aleatorio/1]).

% Pide una lista, devuelve un valor aleatorio dentro de esta.
valor_aleatorio(X) ->
    Item = lists:nth(rand:uniform(length(X)), X),
    io:format("Elemento aleatorio obtenido: ~w~n", [Item]).
