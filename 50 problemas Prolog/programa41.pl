%% --------------------------------------------------------------
%% Nombre: programa41
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula una tabla de la verdad para
%% una expresión lógica con variables.
%%
%% Corresponde al ejercicio 41
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Genera una tabla de verdad para una expresión lógica en dos variables.
% A y B son las variables lógicas y Expr es la expresión lógica que se evalúa.
table(A, B, Expr) :- write(A), write(' '), write(B), write(' '), call(Expr), nl, fail.
table(_, _, _).
