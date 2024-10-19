%% --------------------------------------------------------------
%% Nombre: programa29
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa organiza la lista según cuántas veces
%% aparecen subconjuntos de la misma longitud.
%%
%% Corresponde al ejercicio 29
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
length_frequency(L, F) :- map_list_to_pairs(length, L, P), msort(P, SP), encode(SP, F).