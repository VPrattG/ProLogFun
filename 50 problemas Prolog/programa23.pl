%% --------------------------------------------------------------
%% Nombre: programa23
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa extrae elementos al azar de una lista.
%%
%% Corresponde al ejercicio 23
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Extrae un número dado de elementos aleatorios de una lista.
% Utiliza un generador de números aleatorios y elimina los elementos seleccionados.
rnd_select(_, 0, []).
rnd_select(L, N, [X|R]) :- 
    length(L, Len), 
    Len > 0, 
    random(0, Len, I), 
    I1 is I + 1,
    element_at(X, L, I1), 
    delete(L, X, L1), 
    N1 is N - 1, 
    rnd_select(L1, N1, R).
% Formato para su función (necesita que programa03 esté cargado)
% rnd_select(lista, valores, X)