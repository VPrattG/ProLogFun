%% --------------------------------------------------------------
%% Nombre: programa42
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una tabla de la verdad para las
%% diferentes compuertas lógicas.
%%
%% Corresponde al ejercicio 42
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% Utiliza operadores lógicos para definir expresiones y generar tablas de verdad.
% Definición de los operadores básicos AND, OR, NAND, NOR, XOR, IMPLICACIÓN, EQUIVALENCIA.
and(A, B) :- A, B.
or(A, _) :- A.
or(_, B) :- B.
nand(A, B) :- \+ (A, B).
nor(A, B) :- \+ (A; B).
xor(A, B) :- A, \+ B; \+ A, B.
impl(A, B) :- \+ A; B.
equ(A, B) :- A, B; \+ A, \+ B.
% Formato para su función
% compuerta(true o false, true o false)
