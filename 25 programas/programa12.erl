%% --------------------------------------------------------------
%% Módulo: programa12
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa revisa si una lista ingresada por el
%% usuario contiene un valor especificado.
%%
%% Corresponde al ejercicio 12
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa12).
-export([rev_lista/2]).

% Pide un valor y la lista, luego lo busca.
rev_lista(X, List) -> lists:member(X, List).
