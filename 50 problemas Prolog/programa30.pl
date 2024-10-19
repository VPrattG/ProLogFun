%% --------------------------------------------------------------
%% Nombre: programa30
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si un número ingresado es primo.
%% Devuelve true or false.
%%
%% Corresponde al ejercicio 30
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Verifica si un número entero dado es primo.
is_prime(2).
is_prime(3).
is_prime(P) :- P > 3, P mod 2 =\= 0, \+ has_factor(P, 3).

% Verifica si un número tiene factores.
has_factor(N, L) :- N mod L =:= 0.
has_factor(N, L) :- L * L < N, L2 is L + 2, has_factor(N, L2).