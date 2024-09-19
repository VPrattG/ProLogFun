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
rev_lista(X, List) ->
    Buscar = lists:member(X, List),
    io:format("~w~n", [Buscar]).

% % Main function to take inputs and call rev_lista
% main([XStr, ListaStr]) ->
%     % Convert the input list from string to an Erlang term
%     {ok, ListTokens, _} = erl_scan:string(ListaStr),
%     {ok, ParsedList} = erl_parse:parse_term(ListTokens),

%     % Try to interpret XStr as an integer or atom
%     X =
%         try
%             list_to_integer(XStr)
%         catch
%             _:_ -> list_to_atom(XStr)
%         end,

%     % Call the rev_lista function with the parsed list and search element
%     rev_lista(X, ParsedList).
