%% --------------------------------------------------------------
%% Nombre: programa13
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una lista usando RLE de manera
%% directa.
%%
%% Corresponde al ejercicio 13
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Codifica directamente una lista usando codificación Run-Length.
% Cuenta cuántos elementos consecutivos son iguales.
encode_direct([], []).
encode_direct([X|Xs], [[N,X]|R]) :- count(X, [X|Xs], N, Rest), encode_direct(Rest, R).

% Cuenta cuántos elementos consecutivos son iguales.
count(_, [], 0, []).
count(X, [X|Xs], N, Rest) :- count(X, Xs, N1, Rest), N is N1 + 1.
count(X, [Y|Ys], 0, [Y|Ys]) :- X \= Y.
