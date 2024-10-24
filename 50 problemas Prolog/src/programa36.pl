%% --------------------------------------------------------------
%% Nombre: programa36
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula la función totiente de Euler
%% mejorada para un número dado.
%%
%% Corresponde al ejercicio 36
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def prime_factors(n):
%     """Encuentra los factores primos de un número entero positivo."""
%     if n <= 1:
%         return []
%     factors = []
%     while n % 2 == 0:
%         factors.append(2)
%         n //= 2
%     for i in range(3, int(n**0.5) + 1, 2):
%         while n % i == 0:
%             factors.append(i)
%             n //= i
%     if n > 1:
%         factors.append(n)
%     return factors
%
% def encode(lst):
%     """Codifica una lista de elementos en una lista de pares (n, elemento) donde n es la cantidad de veces que aparece el elemento."""
%     from itertools import groupby
%     return [[len(list(g)), k] for k, g in groupby(sorted(lst))]
%
% def prime_factors_mult(n):
%     """Determina los factores primos de N con su multiplicidad."""
%     factors = prime_factors(n)
%     return encode(factors)
%
% def totient_phi(factors):
%     """Calcula la función totiente de Euler a partir de factores primos con multiplicidad."""
%     phi = 1
%     for p, m in factors:
%         phi *= (p - 1) * (p ** (m - 1))
%     return phi
%
% def totient_improved(n):
%     """Calcula la función totiente usando factores primos con multiplicidad para mejorar la eficiencia."""
%     factors = prime_factors_mult(n)
%     return totient_phi(factors)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Calcula la función totiente usando los factores primos con multiplicidad para mejorar la eficiencia.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient_improved(N, Phi) :- 
    prime_factors_mult(N, F), 
    totient_phi(F, Phi).

totient_phi([], 1).
totient_phi([[P, M]|T], Phi) :- 
    totient_phi(T, Phi1), 
    Phi is Phi1 * (P - 1) * P ** (M - 1).

% Necesita cargar programa35, programa34, programa10 y programa09
% ----------------------------------------------
