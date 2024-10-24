%% --------------------------------------------------------------
%% Nombre: programa37
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa compara la función totiente normal y
%% la mejorada para un número dado.
%%
%% Corresponde al ejercicio 37
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------

% -------- Código en Python (comentado) --------
% def pack(lst):
%     if not lst:
%         return []
%     first, *rest = lst
%     grouped = transfer(first, rest)
%     return [grouped[0]] + pack(grouped[1:])
%
% def transfer(x, xs):
%     if not xs:
%         return ([], [])
%     if xs[0] != x:
%         return ([x], xs)
%     else:
%         sublist, rest = transfer(x, xs[1:])
%         return ([x] + sublist, rest)
%
% def encode(lst):
%     packed = pack(lst)
%     return transform(packed)
%
% def transform(packed):
%     return [[len(group), group[0]] for group in packed]
%
% def gcd(x, y):
%     if y == 0:
%         return x
%     return gcd(y, x % y)
%
% def coprime(x, y):
%     return gcd(x, y) == 1
%
% def totient(n):
%     if n == 1:
%         return 1
%     return totient_acc(n, n)
%
% def totient_acc(m, k, acc=0):
%     if k == 0:
%         return acc
%     if coprime(m, k):
%         return totient_acc(m, k - 1, acc + 1)
%     return totient_acc(m, k - 1, acc)
%
% def prime_factors(n):
%     factors = []
%     if n > 1:
%         return prime_factors_helper(n, 2, factors)
%     return factors
%
% def prime_factors_helper(n, f, factors):
%     if n == 1:
%         return factors
%     if n > 1 and n % f == 0:
%         factors.append(f)
%         return prime_factors_helper(n // f, f, factors)
%     return prime_factors_helper(n, next_factor(f), factors)
%
% def next_factor(f):
%     if f == 2:
%         return 3
%     return f + 2
%
% def prime_factors_mult(n):
%     factors = prime_factors(n)
%     return encode(factors)  # Usando la función encode definida previamente
%
% def totient_improved(n):
%     factors = prime_factors_mult(n)
%     return totient_phi(factors)
%
% def totient_phi(factors):
%     phi = 1
%     for p, m in factors:
%         phi *= (p - 1) * (p ** (m - 1))
%     return phi
%
% def compare_totient(n):
%     phi1 = totient(n)  # Esta función debe ser importada o definida previamente
%     phi2 = totient_improved(n)
%     print(f'Phi (método básico): {phi1}')
%     print(f'Phi (método mejorado): {phi2}')
%
% if __name__ == "__main__":
%     compare_totient(28)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Compara los dos métodos para calcular la función totiente.
compare_totient(N) :- 
    totient(N, Phi1),  % Esta función debe ser importada de un programa anterior
    totient_improved(N, Phi2), 
    write('Phi (método básico): '), 
    write(Phi1), 
    nl, 
    write('Phi (método mejorado): '), 
    write(Phi2), 
    nl.

% Necesita cargar programa33 y programa36
% ----------------------------------------------
