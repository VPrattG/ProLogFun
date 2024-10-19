%% --------------------------------------------------------------
%% Nombre: programa26
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa genera combinaciones de n elementos de
%% una lista creada por el usuario.
%%
%% Corresponde al ejercicio 26
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Genera todas las combinaciones de K elementos seleccionados de una lista dada.
combination(0, _, []).
combination(K, [H|T], [H|Comb]) :- K > 0, K1 is K - 1, combination(K1, T, Comb).
combination(K, [_|T], Comb) :- K > 0, combination(K, T, Comb).
% Formato para su función
% combination(cantidad, lista, X)