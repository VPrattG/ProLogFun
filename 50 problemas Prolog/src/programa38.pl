%% --------------------------------------------------------------
%% Nombre: programa38
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula todos los números primos en
%% un rango determinado de valores
%%
%% Corresponde al ejercicio 38
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
% if __name__ == "__main__":
%     low = 10
%     high = 50
%     primes = prime_list(low, high)
%     print(f'Primes between {low} and {high}: {primes}')
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera una lista de números primos en un rango dado.
prime_list(Low, High, Primes) :- findall(P, (between(Low, High, P), is_prime(P)), Primes).
% Necesita cargar programa30
% ----------------------------------------------
