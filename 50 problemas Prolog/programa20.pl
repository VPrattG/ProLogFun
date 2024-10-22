%% --------------------------------------------------------------
%% Nombre: programa20
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa elimina el elemento n de una lista.
%%
%% Corresponde al ejercicio 20
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def remove_at(index, lst):
%     if index <= 0 or not lst:
%         return None  # or raise an error
%     if index == 1:
%         return lst[1:]  # return the list without the first element
%     return [lst[0]] + remove_at(index - 1, lst[1:])

% if __name__ == "__main__":
%     result = remove_at(2, [1, 2, 3, 4, 5])
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Elimina el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
remove_at(X, [X|T], 1, T).
remove_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, remove_at(X, T, K1, R).

% Formato para que funcione
% remove_at(valor a remover, lista, posición del valor a remover, X)
% Si el valor a remover no se encuentra en la posición dada, devuelve false
% ----------------------------------------------
