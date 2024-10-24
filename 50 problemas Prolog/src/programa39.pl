%% --------------------------------------------------------------
%% Nombre: programa39
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa realiza la conjetura de Goldbach para
%% buscar dos primos que sumen a un par.
%%
%% Corresponde al ejercicio 39
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def is_prime(n):
%     if n <= 1:
%         return False
%     if n <= 3:
%         return True
%     if n % 2 == 0 or n % 3 == 0:
%         return False
%     i = 5
%     while i * i <= n:
%         if n % i == 0 or n % (i + 2) == 0:
%             return False
%         i += 6
%     return True
%
% def prime_list(low, high):
%     return [p for p in range(low, high + 1) if is_prime(p)]
%
% def goldbach(n):
%     if n > 2 and n % 2 == 0:
%         primes = prime_list(2, n)
%         for p1 in primes:
%             p2 = n - p1
%             if is_prime(p2):
%                 return (p1, p2)
%     return None
%
% if __name__ == "__main__":
%     n = 28  # Número par dado
%     result = goldbach(n)
%     if result:
%         print(f'Los primos que suman {n} son: {result[0]} y {result[1]}')
%     else:
%         print('No se encontraron primos que sumen el número dado.')
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
goldbach(N, [P1, P2]) :- N > 2, N mod 2 =:= 0, prime_list(2, N, Primes), member(P1, Primes), P2 is N - P1, is_prime(P2).
% Necesita cargar programa30 y programa38
% ----------------------------------------------
