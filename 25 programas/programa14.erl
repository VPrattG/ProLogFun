%% --------------------------------------------------------------
%% Módulo: programa14
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime un número aleatorio mayor o
%% igual que el mínimo, y menor al máximo
%%
%% Corresponde al ejercicio 14
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa14).
-export([aleatorio/2]).

% Pide dos números, devuelve un valor en el rango [A, B)
aleatorio(A, B) -> A + (B - A) * rand:uniform().
