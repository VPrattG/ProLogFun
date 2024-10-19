%% --------------------------------------------------------------
%% Nombre: programa17
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa separa la lista en dos listas que se
%% separan en un punto n.
%%
%% Corresponde al ejercicio 17
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Divide una lista en dos partes.
% La longitud de la primera parte está dada por el segundo argumento.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :- N > 0, N1 is N - 1, split(T, N1, L1, L2).
% Formato de ejecución
% split([lista], separador, X, Y)