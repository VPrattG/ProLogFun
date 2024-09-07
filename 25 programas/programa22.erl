%% --------------------------------------------------------------
%% Módulo: programa22
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa convierte un string a un int y despliega
%% una prueba de que funcionó
%%
%% Corresponde al ejercicio 22
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa22).
-export([str_to_int/1]).

str_to_int(S) ->
    % Convierte la cadena insertada al llamar al programa en un int.
    I = list_to_integer(S),
    io:format("~p~n", [I]).
