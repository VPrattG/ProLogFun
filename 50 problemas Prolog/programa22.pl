%% --------------------------------------------------------------
%% Nombre: programa22
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene todos los valores enteros de
%% un rango, y los pone en una lista.
%%
%% Corresponde al ejercicio 22
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Crea una lista con todos los enteros dentro de un rango dado.
% Si el inicio y el final son idénticos
range(I, I, [I]).
% Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).
% Formato para su función
% range(valor inicial, valor final, X)