%% --------------------------------------------------------------
%% Nombre: programa33
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina cuántos números menores al
%% ingresado son coprimos con este, usando la función φ de Euler.
%%
%% Corresponde al ejercicio 33
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def gcd(x, y):
%     while y:
%         x, y = y, x % y
%     return x

% def coprime(x, y):
%     return gcd(x, y) == 1

% def totient(m):
%     if m == 1:
%         return 1
%     count = 0
%     for k in range(1, m):
%         if coprime(m, k):
%             count += 1
%     return count

% if __name__ == "__main__":
%     result = totient(9)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Calcula la función totiente de Euler, que cuenta cuántos números menores que M son coprimos con M.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient(1, 1).
totient(M, Phi) :- M > 1, totient_acc(M, M, 0, Phi).

totient_acc(_, 0, Acc, Acc).
totient_acc(M, K, Acc, Phi) :- 
    K > 0, 
    coprime(M, K), 
    Acc1 is Acc + 1, 
    K1 is K - 1, 
    totient_acc(M, K1, Acc1, Phi).

totient_acc(M, K, Acc, Phi) :- 
    K > 0, 
    \+ coprime(M, K), 
    K1 is K - 1, 
    totient_acc(M, K1, Acc, Phi).

% Necesita cargar programa32
% ----------------------------------------------
