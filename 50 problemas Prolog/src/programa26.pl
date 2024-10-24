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

% -------- Código en Python (comentado) --------
% def combination(k, lst):
%     if k == 0:
%         return [[]]  # base case: one combination of zero elements
%     if not lst:
%         return []  # no more elements to combine
%     first, rest = lst[0], lst[1:]
%     with_first = [[first] + comb for comb in combination(k - 1, rest)]
%     without_first = combination(k, rest)
%     return with_first + without_first

% if __name__ == "__main__":
%     result = combination(2, [1, 2, 3, 4])
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera todas las combinaciones de K elementos seleccionados de una lista dada.
combination(0, _, []).

combination(K, [H|T], [H|Comb]) :- K > 0, K1 is K - 1, combination(K1, T, Comb).

combination(K, [_|T], Comb) :- K > 0, combination(K, T, Comb).

% Formato para su función
% combination(cantidad, lista, X)
% ----------------------------------------------
