%% --------------------------------------------------------------
%% Nombre: programa21
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa inserta un elemento en una lista en
%% una posición determinada.
%%
%% Corresponde al ejercicio 21
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def insert_at(value, lst, index):
%     if index <= 0:
%         return lst  # or raise an error
%     if index == 1:
%         return [value] + lst  # insert at the beginning
%     return [lst[0]] + insert_at(value, lst[1:], index - 1)

% if __name__ == "__main__":
%     result = insert_at(99, [1, 2, 3, 4], 3)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Inserta un elemento en una lista en la posición dada.
% El índice K debe ser mayor que 0.
insert_at(X, L, 1, [X|L]).
insert_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, insert_at(X, T, K1, R).

% Formato para su función
% insert_at(valor a insertar, lista, posición, X)
% ----------------------------------------------
