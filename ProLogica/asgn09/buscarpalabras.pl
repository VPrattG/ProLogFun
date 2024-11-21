%% --------------------------------------------------------------
%% Programa: buscarpalabras
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene una "sopa de letras" que puede
%% resolver, incluso si se indican ciertas restricciones
%%
%% Corresponde a la asignación 09 en logifun/prolog/assignment
%%
%% Fecha: 15 de octubre de 2024
%% --------------------------------------------------------------

% Definimos la sopa de letras como una lista de listas de letras.
letras(
  [[r, a, m, a, m, a, m, r],
   [f, r, e, t, n, i, e, v],
   [e, r, r, a, m, r, m, a],
   [l, r, a, b, a, a, r, m],
   [b, m, m, r, u, n, a, m],
   [r, o, m, z, o, r, m, r],
   [n, m, o, i, a, r, m, e],
   [r, n, s, m, r, a, a, m],
   [r, i, r, a, a, m, m, o],
   [r, m, r, a, a, r, m, r]]).
%    [[r, a, m, m, a, m, a, m, r, m],
%    [r, r, e, t, n, i, e, v, a, m],
%    [e, r, r, a, m, m, r, m, a, a],
%    [l, r, a, r, a, b, a, a, r, m],
%    [b, m, m, r, u, n, a, m, s, r],
%    [o, r, m, z, o, r, m, r, u, r],
%    [n, m, o, i, a, r, m, m, e, r],
%    [r, n, s, m, r, a, a, m, l, a],
%    [r, i, r, a, a, m, m, m, o, a],
%    [v, m, m, r, a, a, r, m, r, m]]).

% Buscamos palabras sin las letras M, A, ni R.
valid_word(Word) :-
    \+ member(m, Word),
    \+ member(a, Word),
    \+ member(r, Word).

% Verificamos palabras en las filas.
find_words(Row, Word) :-
    append(_, Word, Row),
    valid_word(Word).

% Encontrar todas las palabras en la sopa de letras.
solve :-
    letras(Grid),
    member(Row, Grid),
    find_words(Row, Word),
    write(Word), nl,
    fail.
solve.