%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene un número aleatorio y lo imprime
%% en pantalla
%%
%% Corresponde al ejercicio 15
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa15).
-export([rng/1]).

rng(Max) ->
    rand:uniform(Max).
