%% --------------------------------------------------------------
%% Nombre: programa32
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si dos números son coprimos
%% Devuelve true or false.
%%
%% Corresponde al ejercicio 32
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def coprime(x, y):
%     return gcd(x, y) == 1

% def gcd(x, y):
%     if y == 0:
%         return x
%     return gcd(y, x % y)

% if __name__ == "__main__":
%     result = coprime(8, 9)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Dos números son coprimos si su máximo común divisor es 1.
coprime(X, Y) :- gcd(X, Y, 1).

% Necesita cargar programa31
% ----------------------------------------------
