%% --------------------------------------------------------------
%% Nombre: programa49
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa construye todos los árboles binarios
%% simétricos y completamente equilibrados con cierta cantidad de nodos.
%%
%% Corresponde al ejercicio 49
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Genera todos los árboles binarios simétricos y completamente equilibrados con N nodos.
% Utiliza el paradigma de generar y probar para encontrar todos los árboles que cumplen ambas propiedades.
sym_cbal_trees(N, Ts) :- findall(T, (cbal_tree(N, T), symmetric(T)), Ts).
