%% --------------------------------------------------------------
%% Nombre: programa44
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si un número ingresado es primo.
%% Devuelve true or false.
%%
%% Corresponde al ejercicio 44
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Genera un árbol de Huffman dado un conjunto de frecuencias.
% https://es.wikipedia.org/wiki/Codificación_Huffman
% El algoritmo de Huffman se utiliza para la compresión de datos, construyendo un árbol binario óptimo para la codificación.
huffman(Fs, Hs) :- length(Fs, Len), Len > 1, sort(2, @=<, Fs, Sorted), huffman_tree(Sorted, Hs).

% Caso base para construir el árbol de Huffman.
huffman_tree([fr(X, _) | []], hc(X, '0')).
huffman_tree([fr(_, _) | [fr(_, _) | _]], _).

example :-
    Frequencies = [fr(a, 5), fr(b, 9), fr(c, 12), fr(d, 13), fr(e, 16), fr(f, 45)],
    huffman(Frequencies, HuffmanTree),
    write(HuffmanTree).
