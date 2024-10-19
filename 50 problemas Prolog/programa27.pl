%% --------------------------------------------------------------
%% Nombre: programa27
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa agrupa elementos de una lista en sublistas.
%% El usuario indica el tamaño de cada subconjunto
%%
%% Corresponde al ejercicio 27
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Agrupa los elementos de un conjunto en subconjuntos disjuntos dados los tamaños de los subgrupos.
group([], [], []).
group([N|Ns], Es, [G|Gs]) :- combination(N, Es, G), subtract(Es, G, Rest), group(Ns, Rest, Gs).
% Formato para su función
% group([tamaño, de, subconjuntos], [lista], X)