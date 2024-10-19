%% --------------------------------------------------------------
%% Nombre: programa40
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa usa la conjetura de Goldbach para realizar
%% lo hecho en programa39, pero en todos los pares dentro de un rango
%% de números.
%%
%% Corresponde al ejercicio 40
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
goldbach_list(Low, High, L) :- findall([N, P1, P2], (between(Low, High, N), N mod 2 =:= 0, goldbach(N, [P1, P2])), L).
