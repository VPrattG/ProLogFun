%% --------------------------------------------------------------
%% Nombre: programa35
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina los factores primos de un
%% entero en particular, usando RLE.
%%
%% Corresponde al ejercicio 35
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% from collections import Counter

% def pack(lst):
%     packed = []
%     current = []
%     for x in lst:
%         if current and current[-1] != x:
%             packed.append(current)
%             current = []
%         current.append(x)
%     if current:
%         packed.append(current)
%     return packed

% def transform(packed):
%     return [(len(group), group[0]) for group in packed]

% def encode(lst):
%     return transform(pack(lst))

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

% def prime_factors_mult(n):
%     factors = prime_factors(n)
%     return encode(factors)

% if __name__ == "__main__":
%     result = prime_factors_mult(28)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Determina los factores primos con su multiplicidad.
prime_factors_mult(N, L) :- 
    prime_factors(N, F), 
    encode(F, L).

% Necesita cargar programa34, programa10 y programa09
% ----------------------------------------------
