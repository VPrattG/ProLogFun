%% --------------------------------------------------------------
%% Nombre: programa40
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa usa la conjetura de Goldbach para realizar
%% lo hecho en programa39, pero en todos los pares dentro de un rango
%% de números.
%%
%% Corresponde al ejercicio 40
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def goldbach(n):
%     """Encuentra dos números primos que sumen n."""
%     if n > 2 and n % 2 == 0:
%         primes = prime_list(2, n)
%         for p1 in primes:
%             p2 = n - p1
%             if is_prime(p2):
%                 return (p1, p2)
%     return None
%
% def goldbach_list(low, high):
%     """Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango."""
%     results = []
%     for n in range(low, high + 1):
%         if n % 2 == 0:
%             result = goldbach(n)
%             if result:
%                 results.append((n, result[0], result[1]))
%     return results
%
% if __name__ == "__main__":
%     low = 4
%     high = 20
%     results = goldbach_list(low, high)
%     for res in results:
%         print(f'Goldbach: {res[0]} = {res[1]} + {res[2]}')
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
goldbach_list(Low, High, L) :- findall([N, P1, P2], (between(Low, High, N), N mod 2 =:= 0, goldbach(N, [P1, P2])), L).
% ----------------------------------------------
