%% --------------------------------------------------------------
%% Nombre: programa12
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa decodifica una lista en RLE para que
%% parezca una lista normal.
%%
%% Corresponde al ejercicio 12
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Decodifica una lista codificada mediante Run-Length.
% Expande cada par (N, X) en una lista con N elementos X.
decode([], []).
decode([[N,X]|T], R) :- decode(T, R1), expand(X, N, E), append(E, R1, R).

% Expande un elemento X en una lista de longitud N.
expand(_, 0, []).
expand(X, N, [X|T]) :- N > 0, N1 is N - 1, expand(X, N1, T).