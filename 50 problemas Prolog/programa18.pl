%% --------------------------------------------------------------
%% Nombre: programa18
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime "Hello" 10 veces
%%
%% Corresponde al ejercicio 18
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def slice(lst, start, end):
%     if start <= 0 or end <= 0 or not lst:
%         return []
%     if start == 1:
%         return lst[:end]
%     return slice(lst[1:], start - 1, end - 1)

% if __name__ == "__main__":
%     result = slice([1, 2, 3, 4, 5], 2, 4)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Extrae una porción de una lista, dado un rango.
% Los índices I y K deben ser mayores que 0.
slice([H|_], 1, 1, [H]).
slice([H|T], 1, K, [H|R]) :- K > 1, K1 is K - 1, slice(T, 1, K1, R).
slice([_|T], I, K, R) :- I > 1, I1 is I - 1, K1 is K - 1, slice(T, I1, K1, R).

% Formato de uso
% slice(lista, posición inicial, posición final, X)
% ----------------------------------------------
