%% --------------------------------------------------------------
%% Nombre: programa24
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa extrae N números aleatorios de un rango
%% de valores.
%%
%% Corresponde al ejercicio 24
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% import random

% def lotto(n, m):
%     numbers = range(1, m + 1)  # generate list from 1 to m
%     return random.sample(numbers, n)  # select n random numbers

% if __name__ == "__main__":
%     result = lotto(6, 49)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Extrae N números aleatorios de un rango dado.
% Utiliza la función range para generar la lista de números y luego selecciona aleatoriamente.
lotto(N, M, L) :- range(1, M, R), rnd_select(R, N, L).

% Requiere cargar programa22
% Formato para su función
% lotto(cantidad, valor máximo, X)
% ----------------------------------------------
