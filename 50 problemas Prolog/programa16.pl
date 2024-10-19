%% --------------------------------------------------------------
%% Nombre: programa16
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa los elementos de una lista que se encuentre
%% cada n posiciones
%%
%% Corresponde al ejercicio 16
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Elimina cada n-ésimo elemento de una lista.
% Utiliza un contador para determinar cuándo eliminar un elemento.
drop(L, N, R) :- drop(L, N, N, R).

% Caso base: cuando la lista está vacía, el resultado es vacío.
drop([], _, _, []).
% Si el contador llega a 1, omite el primer elemento y reinicia el contador.
drop([_|T], 1, N, R) :- drop(T, N, N, R).
% Caso recursivo: disminuye el contador y conserva el elemento.
drop([H|T], K, N, [H|R]) :- K > 1, K1 is K - 1, drop(T, K1, N, R).