%% --------------------------------------------------------------
%% Nombre: programa36
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula la función totiente de Euler
%% mejorada para un número dado.
%%
%% Corresponde al ejercicio 36
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Calcula la función totiente usando los factores primos con multiplicidad para mejorar la eficiencia.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient_improved(N, Phi) :- prime_factors_mult(N, F), totient_phi(F, Phi).

totient_phi([], 1).
totient_phi([[P, M]|T], Phi) :- totient_phi(T, Phi1), Phi is Phi1 * (P - 1) * P ** (M - 1).
% Necesita cargar programa35
