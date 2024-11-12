%% --------------------------------------------------------------
%% Módulo: problema06
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula la factorial de cualquier
%% número proporcionado de manera recursiva.
%%
%% Corresponde al ejercicio 31
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(problema02).
-export([fact/1]).

% Si el número proporcionado es 0, devuelve 1
fact(0) -> 1;
% Se multiplica el número dado por una recursión que deberá dar otro valor, y así
fact(I) -> I * fact(I - 1).
