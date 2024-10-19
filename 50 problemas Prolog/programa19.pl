%% --------------------------------------------------------------
%% Nombre: programa19
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa rota una lista hacia la izquiera n veces.
%%
%% Corresponde al ejercicio 19
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Rota una lista N lugares a la izquierda.
% Utiliza la longitud de la lista para manejar rotaciones mayores que la longitud.
rotate(L, N, R) :- length(L, Len), N1 is N mod Len, split(L, N1, L1, L2), append(L2, L1, R).