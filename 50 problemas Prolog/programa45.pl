%% --------------------------------------------------------------
%% Nombre: programa45
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si la información proporcionada
%% resulta en un árbol binario o no.
%%
%% Corresponde al ejercicio 45
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Verifica si un término dado representa un árbol binario.
% Un árbol binario está compuesto por un nodo raíz y dos subárboles.
istree(nil).
istree(t(_, L, R)) :- istree(L), istree(R).
