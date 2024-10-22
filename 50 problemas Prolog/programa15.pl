%% --------------------------------------------------------------
%% Nombre: programa15
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa multiplica los elementos de una lista
%% n veces.
%%
%% Corresponde al ejercicio 15
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def dupli(lst, n):
%     if not lst:
%         return []
%     duplicated = duplicate(lst[0], n)
%     return duplicated + dupli(lst[1:], n)

% def duplicate(x, n):
%     if n == 0:
%         return []
%     return [x] + duplicate(x, n - 1)

% if __name__ == "__main__":
%     result = dupli([1, 2, 3], 3)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Duplica los elementos de una lista un número dado de veces.
% Si la lista está vacía, se mantiene así
dupli([], _, []).

% Si hay una lista, se multiplica la cantidad de veces dada
dupli([H|T], N, R) :- duplicate(H, N, D), dupli(T, N, R1), append(D, R1, R).

% Crea una lista con N repeticiones del elemento X.
duplicate(_, 0, []).

duplicate(X, N, [X|R]) :- N > 0, N1 is N - 1, duplicate(X, N1, R).
% ----------------------------------------------
