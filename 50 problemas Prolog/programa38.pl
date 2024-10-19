%% --------------------------------------------------------------
%% Nombre: programa38
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula todos los números primos en
%% un rango determinado de valores
%%
%% Corresponde al ejercicio 38
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Genera una lista de números primos en un rango dado.
prime_list(Low, High, Primes) :- findall(P, (between(Low, High, P), is_prime(P)), Primes).
% Necesita cargar programa30
