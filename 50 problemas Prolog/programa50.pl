%% --------------------------------------------------------------
%% Nombre: programa50
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa construye árboles binarios equilibrados
%% en altura.
%%
%% Corresponde al ejercicio 50
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Construye un árbol binario equilibrado en altura con una altura dada.
% Un árbol equilibrado en altura tiene subárboles cuya diferencia de altura es como máximo 1.
hbal_tree(0, nil).
hbal_tree(H, t('x', L, R)) :- H > 0, H1 is H - 1, H2 is H1 - 1, hbal_tree(H1, L), hbal_tree(H2, R).
