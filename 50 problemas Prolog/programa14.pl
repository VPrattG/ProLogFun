%% --------------------------------------------------------------
%% Nombre: programa14
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa duplica todos los elementos que hay
%% en una lista.
%%
%% Corresponde al ejercicio 14
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def dupli(lst):
%     if not lst:
%         return []
%     return [lst[0], lst[0]] + dupli(lst[1:])

% if __name__ == "__main__":
%     duplicated = dupli([1, 2, 3])
%     print(duplicated)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Duplica los elementos de una lista.
% Caso base: la lista vacía se mantiene vacía.
dupli([], []).

% Caso recursivo: duplica el primer elemento y continúa con el resto.
dupli([H|T], [H,H|R]) :- dupli(T, R).
% ----------------------------------------------
