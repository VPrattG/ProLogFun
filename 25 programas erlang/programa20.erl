%% --------------------------------------------------------------
%% Módulo: programa20
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa busca un valor indicando en la matriz
%% proporcionada, indicando también la coordenada.
%%
%% Corresponde al ejercicio 20
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa20).
-export([search/2]).

% Pide un valor particular y una matriz
% Si lo encuentra, devuelve una tupla
-spec search(T, [[T]]) -> {pos_integer(), pos_integer()}.

% Inicia la búsqueda
search(X, M) -> search(X, M, 1).

search(_, [], _) ->
    throw(notfound);
search(X, [R | Rs], RN) ->
    case search_row(X, R) of
        notfound ->
            search(X, Rs, RN + 1);
        CN ->
            {RN, CN}
    end.

search_row(X, Row) -> search_row(X, Row, 1).

search_row(_, [], _) ->
    notfound;
search_row(X, [X | _], CN) ->
    CN;
search_row(X, [_ | Elems], CN) ->
    search_row(X, Elems, CN + 1).
