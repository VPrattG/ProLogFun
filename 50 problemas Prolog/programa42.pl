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

% -------- Código en Python (comentado) --------
% def and_op(a, b):
%     return a and b
% 
% def or_op(a, b):
%     return a or b
%
% def nand_op(a, b):
%     return not (a and b)
%
% def nor_op(a, b):
%     return not (a or b)
%
% def xor_op(a, b):
%     return (a and not b) or (not a and b)
%
% def impl_op(a, b):
%     return (not a) or b
%
% def equ_op(a, b):
%     return (a and b) or (not a and not b)
%
% def print_truth_table(func):
%     print(f"Tabla de verdad para {func.__name__}:")
%     print("A\tB\tResultado")
%     for a in [True, False]:
%         for b in [True, False]:
%             result = func(a, b)
%             print(f"{a}\t{b}\t{result}")
%     print()
%
% if __name__ == "__main__":
%     operations = [and_op, or_op, nand_op, nor_op, xor_op, impl_op, equ_op]
%     for op in operations:
%         print_truth_table(op)
% ----------------------------------------------

% -------- Código en Prolog --------------------
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
% ----------------------------------------------
