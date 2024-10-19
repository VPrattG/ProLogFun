%% --------------------------------------------------------------
%% Nombre: programa47
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea árboles binarios simétricos.
%%
%% Corresponde al ejercicio 47
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Comprueba si un árbol binario es simétrico.
% Un árbol es simétrico si sus subárboles izquierdo y derecho son espejos entre sí.
symmetric(nil).
symmetric(t(_, L, R)) :- mirror(L, R).

% Verifica si un árbol es el espejo de otro.
mirror(nil, nil).
mirror(t(_, L1, R1), t(_, L2, R2)) :- mirror(L1, R2), mirror(R1, L2).
