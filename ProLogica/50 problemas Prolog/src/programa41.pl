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

% -------- Código en Python (comentado) --------
% def truth_table(expr):
%     """Genera una tabla de verdad para una expresión lógica en dos variables."""
%     print("A B Result")
%     for a in [False, True]:
%         for b in [False, True]:
%             result = expr(a, b)
%             print(int(a), int(b), int(result))
%
% # Ejemplo de uso
% def example_expression(a, b):
%     return a and (not b)  # Ejemplo de expresión lógica
%
% truth_table(example_expression)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera una tabla de verdad para una expresión lógica en dos variables.
% A y B son las variables lógicas y Expr es la expresión lógica que se evalúa.
table(A, B, Expr) :- 
    call(Expr),
    write(A), write(' '), write(B), 
    nl, 
    fail.
table(_, _, _).
% ----------------------------------------------

