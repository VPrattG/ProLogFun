%% --------------------------------------------------------------
%% Nombre: programa37
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa compara la función totiente normal y
%% la mejorada para un número dado.
%%
%% Corresponde al ejercicio 37
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Compara los dos métodos para calcular la función totiente.
compare_totient(N) :- totient(N, Phi1), totient_improved(N, Phi2), write('Phi (método básico): '), write(Phi1), nl, write('Phi (método mejorado): '), write(Phi2), nl.
% Necesita cargar programa33 y programa36
