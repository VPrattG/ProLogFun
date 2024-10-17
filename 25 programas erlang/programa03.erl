%% --------------------------------------------------------------
%% Módulo: programa03
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una función que realiza una
%% acción.
%%
%% Corresponde al ejercicio 03
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa03).
-export([procedure/0]).

% Se crea una función que no devuelve valor (procedimiento)
-spec procedure() -> _.
% El "efecto secundario" del procedimiento.
procedure() -> io:format("#YOLO!~n").
