%% --------------------------------------------------------------
%% Nombre: programa35
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina los factores primos de un
%% entero en particular, usando RLE.
%%
%% Corresponde al ejercicio 35
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Determina los factores primos con su multiplicidad.
prime_factors_mult(N, L) :- prime_factors(N, F), encode(F, L).
% Necesita cargar programa34, programa10 y programa09
