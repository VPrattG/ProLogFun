%% --------------------------------------------------------------
%% Nombre: programa20
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa elimina el elemento n de una lista.
%%
%% Corresponde al ejercicio 20
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Elimina el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
remove_at(X, [X|T], 1, T).
remove_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, remove_at(X, T, K1, R).
% Formato para que funcione
% remove_at(valor a remover, lista, posición del valor a remover, X)
% Si el valor a remover no se encuentra en la posición dada, devuelve false