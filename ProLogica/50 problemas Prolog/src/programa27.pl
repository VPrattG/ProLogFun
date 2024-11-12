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

% -------- Código en Python (comentado) --------
% def group(sizes, lst):
%     if not sizes:
%         return []
%     size = sizes[0]
%     from itertools import combinations
%     for combo in combinations(lst, size):
%         rest = [item for item in lst if item not in combo]
%         for groups in group(sizes[1:], rest):
%             yield [combo] + groups

% if __name__ == "__main__":
%     result = list(group([2, 2], [1, 2, 3, 4]))
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Agrupa los elementos de un conjunto en subconjuntos disjuntos dados los tamaños de los subgrupos.
group([], [], []).

group([N|Ns], Es, [G|Gs]) :- 
    combination(N, Es, G), 
    subtract(Es, G, Rest), 
    group(Ns, Rest, Gs).

% Formato para su función
% group([tamaño de subconjuntos], [lista], X)
% ----------------------------------------------
