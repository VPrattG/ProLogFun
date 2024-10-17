%% --------------------------------------------------------------
%% Módulo: programa10
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una lista Y insertando valores
%% aleatorios de una lista X.
%%
%% Corresponde al ejercicio 10
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa10).
-export([lista_aleatoria/1]).

% Pide que el usuario ingrese una lista al llamarse (tipo [1, 2, 3, 4, 5])
lista_aleatoria(X) ->
    % Con la lista anterior, se crea una nueva con valores aleatorios de la primera
    ListaNueva = [Y || {_, Y} <- lists:sort([{rand:uniform(), N} || N <- X])],
    io:format("~p~n", [ListaNueva]).
