%% --------------------------------------------------------------
%% Módulo: parentesco
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea un árbol genealógico y comprueba
%% relaciones familiares entre lo insertado.
%%
%% Corresponde a la asignación 00 en logifun/prolog/assignment
%%
%% Fecha: 15 de octubre de 2024
%% --------------------------------------------------------------

%% Declaración de miembros de la familia
%% Armando, Pedro, María, Ricardo, Luis

% Pedro es padre de Ricardo y Luis
padrede('Pedro', 'Ricardo').
padrede('Pedro', 'Luis').

% María es madre de Ricardo y Luis
% Por simplicidad, se usa la función padrede
padrede('María', 'Ricardo').
padrede('María', 'Luis').

% Armando es padre Pedro
padrede('Armando', 'Pedro').

% Comprobar relaciones familiares

% A es hijo de B si B es padre de A
hijode(A, B) :-
    padrede(B, A).

% A es abuelo de B si A es padre de C y C es padre de B
abuelode(A, B) :-
    padrede(A, C),
    padrede(C, B).

% A y B son hermanos si el padre de A es el mismo que el de B y A no es B
hermanode(A, B) :-
    padrede(C, A),
    padrede(C, B),
    A \== B.

% A y B son familiares si A es padre de B, hijo de B, o hermano de B
familiarde(A, B) :-
    padrede(A, B).
familiarde(A, B) :-
    hijode(A, B).
familiarde(A, B) :-
    hermanode(A, B).