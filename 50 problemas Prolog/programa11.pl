%% --------------------------------------------------------------
%% Nombre: programa11
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa modifica el RLE para dejar solos a los
%% elementos que no se repiten.
%%
%% Corresponde al ejercicio 11
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Modifica la codificación Run-Length de una lista.
% Si un elemento no tiene duplicados, se mantiene sin empaquetar.
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

% Caso base: lista vacía.
modify([], []).
% Si hay solo un elemento, agrégalo directamente.
modify([[1,X]|T], [X|R]) :- modify(T, R).
% Si hay más de un elemento, mantén el formato (N, X).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).