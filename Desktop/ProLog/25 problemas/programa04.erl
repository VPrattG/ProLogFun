%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una función que devuelve la potencia
%% cuadrada de un número determinado.
%%
%% Corresponde al ejercicio 04
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa04).
-export([square/1]).

-spec square(integer()) -> integer().
square(X) when is_integer(X) -> X * X.
