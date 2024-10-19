%% --------------------------------------------------------------
%% Nombre: programa32
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si dos números son coprimos
%% Devuelve true or false.
%%
%% Corresponde al ejercicio 32
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Dos números son coprimos si su máximo común divisor es 1.
coprime(X, Y) :- gcd(X, Y, 1).
% Necesita cargar programa31
