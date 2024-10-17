%% --------------------------------------------------------------
%% Módulo: programa14
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime un número aleatorio mayor o
%% igual que el mínimo, y menor al máximo
%%
%% Corresponde al ejercicio 14
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa14).
-export([aleatorio/2, main/1]).

% Pide dos números, devuelve un valor en el rango [A, B)
aleatorio(A, B) -> A + (B - A) * rand:uniform().

% Conversión a int
to_number(Arg) when is_atom(Arg) ->
    to_number(atom_to_list(Arg));
to_number(Str) when is_list(Str) ->
    case string:to_float(Str) of
        {error, no_float} -> list_to_integer(Str);
        {F, _} -> F
    end.

main([A, B]) ->
    ATwo = to_number(A),
    BTwo = to_number(B),
    C = aleatorio(ATwo, BTwo),
    io:format("Valor aleatorio: ~w~n", [C]).
