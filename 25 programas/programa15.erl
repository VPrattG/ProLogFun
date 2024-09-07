%% --------------------------------------------------------------
%% Módulo: programa15
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene un número aleatorio mayor o
%% igual que el mínimo, y menor o igual que el máximo
%%
%% Corresponde al ejercicio 15
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa15).
-export([rng/2]).

rng(A, B) ->
    % Compilar indica que ya no se recomienda usar esta función, pero por el momento funciona.
    crypto:rand_uniform(A, B).
