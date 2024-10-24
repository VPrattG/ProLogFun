%% --------------------------------------------------------------
%% Nombre: programa17
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa separa la lista en dos listas que se
%% separan en un punto n.
%%
%% Corresponde al ejercicio 17
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def split(lst, n):
%     if n == 0:
%         return [], lst
%     first, rest = lst[0], lst[1:]
%     left, right = split(rest, n - 1)
%     return [first] + left, right

% if __name__ == "__main__":
%     left, right = split([1, 2, 3, 4, 5], 3)
%     print("Left part:", left)
%     print("Right part:", right)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Divide una lista en dos partes.
% La longitud de la primera parte está dada por el segundo argumento.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :- N > 0, N1 is N - 1, split(T, N1, L1, L2).

% Formato para su función
% split([lista], separador, X, Y)
% ----------------------------------------------
