%% --------------------------------------------------------------
%% Nombre: programa34
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina los factores primos de un
%% entero en particular.
%%
%% Corresponde al ejercicio 34
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Encuentra los factores primos de un número entero positivo.
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, 2, L).
prime_factors(N, F, L) :- N > 1, F * F =< N, next_factor(F, F1), prime_factors(N, F1, L).
prime_factors(N, F, [N]) :- N > 1, F * F > N.

next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.
