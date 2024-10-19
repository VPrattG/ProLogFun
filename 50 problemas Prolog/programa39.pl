%% --------------------------------------------------------------
%% Nombre: programa39
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa realiza la conjetura de Goldbach para
%% buscar dos primos que sumen a un par.
%%
%% Corresponde al ejercicio 39
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
% https://es.wikipedia.org/wiki/Conjetura_de_Goldbach
goldbach(N, [P1, P2]) :- N > 2, N mod 2 =:= 0, prime_list(2, N, Primes), member(P1, Primes), P2 is N - P1, is_prime(P2).
% Necesita cargar programa30 y programa38
