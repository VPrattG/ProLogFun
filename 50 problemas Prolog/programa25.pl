%% --------------------------------------------------------------
%% Nombre: programa25
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa realiza una permutación aleatoria usando
%% una lista creada por el usuario.
%%
%% Corresponde al ejercicio 25
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% import random

% def rnd_permu(lst):
%     return random.sample(lst, len(lst))  # randomly permute the list

% if __name__ == "__main__":
%     result = rnd_permu([1, 2, 3, 4, 5])
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera una permutación aleatoria de los elementos de una lista.
% Utiliza la selección aleatoria para construir la permutación.
rnd_permu(L, P) :- length(L, Len), rnd_select(L, Len, P).

% Formato para su función
% rnd_permu(lista, X)
% ----------------------------------------------
