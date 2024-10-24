%% --------------------------------------------------------------
%% Nombre: programa43
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa genera el código Gray de N bits
%%
%% Corresponde al ejercicio 43
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% def gray(n):
%     if n == 1:
%         return ['0', '1']
%     
%     # Obtener el código Gray para n-1 bits
%     prev_code = gray(n-1)
%     
%     # Añadir '0' al principio de cada código de la primera mitad
%     result = ['0' + code for code in prev_code]
%     
%     # Añadir '1' al principio de cada código de la segunda mitad (en orden inverso)
%     result.extend('1' + code for code in reversed(prev_code))
%     
%     return result
%
% if __name__ == "__main__":
%     # Ejemplo de uso para 3 bits
%     n = 3
%     codigo_gray = gray(n)
%     print(f"Código Gray para {n} bits:")
%     for i, codigo in enumerate(codigo_gray):
%         print(f"{i}: {codigo}")
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera el código Gray de N bits.
% https://es.wikipedia.org/wiki/Código_Gray
% La secuencia de código Gray es una secuencia binaria en la que dos valores consecutivos difieren en solo un bit.
gray(1, ['0', '1']).
gray(N, C) :- 
    N > 1, 
    N1 is N - 1, 
    gray(N1, C1), 
    maplist(atom_concat('0'), C1, C0), 
    reverse(C1, C1R), 
    maplist(atom_concat('1'), C1R, C1G), 
    append(C0, C1G, C).

% Formato para su función
% gray(N, Resultado).
% Ejemplo: gray(3, X).
% ----------------------------------------------