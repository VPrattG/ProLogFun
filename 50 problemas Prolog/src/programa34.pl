%% --------------------------------------------------------------
%% Nombre: programa34
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina los factores primos de un
%% entero en particular.
%%
%% Corresponde al ejercicio 34
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def prime_factors(n):
%     if n <= 1:
%         return []
%     return prime_factors_helper(n, 2)

% def prime_factors_helper(n, f):
%     if n == 1:
%         return []
%     if n % f == 0:
%         return [f] + prime_factors_helper(n // f, 2)
%     if f * f <= n:
%         f1 = next_factor(f)
%         return prime_factors_helper(n, f1)
%     return [n]

% def next_factor(f):
%     return f + 1 if f == 2 else f + 2

% if __name__ == "__main__":
%     result = prime_factors(28)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Encuentra los factores primos de un número entero positivo.
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- 
    N > 1, 
    0 is N mod F, 
    N1 is N // F, 
    prime_factors(N1, 2, L).

prime_factors(N, F, L) :- 
    N > 1, 
    F * F =< N, 
    next_factor(F, F1), 
    prime_factors(N, F1, L).

prime_factors(N, F, [N]) :- N > 1, F * F > N.

next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.
% ----------------------------------------------
