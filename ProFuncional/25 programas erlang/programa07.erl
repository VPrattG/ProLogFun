%% --------------------------------------------------------------
%% Módulo: programa07
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene una fila y le añade una columna
%% que enumera cada valor.
%%
%% Corresponde al ejercicio 07
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa07).
-export([crear_tuplas/1]).

crear_tuplas(Items) ->
    WithIndex =
        % Toma el arreglo del usuario, y crea una matriz que enumera cada valor
        lists:zip(lists:seq(1, length(Items)), Items),
    % Imprime la nueva matriz
    io:format("~p~n", [WithIndex]).
