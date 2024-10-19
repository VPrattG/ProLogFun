%% --------------------------------------------------------------
%% Nombre: programa28
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa organiza una lista según la longitud
%% de las sublistas que contiene, de menor a mayor.
%%
%% Corresponde al ejercicio 28
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Ordena una lista de listas de acuerdo con la longitud de las sublistas.
lsort(L, S) :- map_list_to_pairs(length, L, P), keysort(P, SP), pairs_values(SP, S).
% Formato para su uso
% lsort([[lista], [de], [subconjuntos]], X)