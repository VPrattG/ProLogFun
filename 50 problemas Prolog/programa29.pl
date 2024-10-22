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

% -------- Código en Python (comentado) --------
% from collections import Counter

% def length_frequency(lst):
%     # Sorts a list of lists according to the frequency of lengths of the sublists
%     lengths = [len(sublist) for sublist in lst]
%     freq = Counter(lengths)
%     sorted_freq = sorted(freq.items())
%     return sorted_freq

% if __name__ == "__main__":
%     result = length_frequency([[1, 2], [3], [4, 5, 6], [7, 8], [9]])
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
length_frequency(L, F) :- 
    map_list_to_pairs(length, L, P), 
    msort(P, SP), 
    encode(SP, F).
% ----------------------------------------------
