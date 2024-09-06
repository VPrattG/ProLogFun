%% --------------------------------------------------------------
%% Módulo: problema01
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

valor_aleatorio(X) -> lists:nth(rand:uniform(length(X)), X).
