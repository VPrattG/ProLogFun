%% --------------------------------------------------------------
%% Módulo: programa15
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene un número aleatorio mayor o
%% igual que el mínimo, y menor o igual que el máximo
%%
%% Corresponde al ejercicio 15
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa15).
-export([rng/2, main/1]).

rng(A, B) ->
    % Compilar indica que ya no se recomienda usar esta función, pero por el momento funciona.
    crypto:rand_uniform(A, B).

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
    C = rng(ATwo, BTwo),
    io:format("Valor aleatorio: ~w~n", [C]).
