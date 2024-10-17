%% --------------------------------------------------------------
%% Módulo: programa19
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa toma una lista escrita por el usuario
%% y la invierte, imprimiéndola en pantalla.
%%
%% Corresponde al ejercicio 19
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa19).
-export([inv_lista/1]).

% Pide una lista de valores [1, 2, 3...], la invierte, y devuelve
inv_lista(Lista) ->
    Atsil = lists:reverse(Lista),
    io:format("Lista invertida: ~p~n", [Atsil]).
