%% --------------------------------------------------------------
%% Nombre: programa31
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina el MCD de dos números
%%
%% Corresponde al ejercicio 31
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def gcd(x, y):
%     if y == 0:
%         return x
%     return gcd(y, x % y)

% if __name__ == "__main__":
%     result = gcd(48, 18)
%     print(result)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Calcula el máximo común divisor usando el algoritmo de Euclides.
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).

% Formato para su función
% gcd(valor1, valor2, X)
% ----------------------------------------------
