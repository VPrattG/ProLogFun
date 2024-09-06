%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa recibe una lista y realiza una función
%% en esta
%%
%% Corresponde al ejercicio 06
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa06).
-export([thing/1]).

thing(Lista) ->
    %     Items = [1, 2, 3, 4, 5],
    %     lists:foreach(fun print/1, Items).
    % print(X) -> io:fwrite("~w~n", X).
    lists:foreach(fun(X) -> io:format("~w ~n", [X]) end, Lista).
