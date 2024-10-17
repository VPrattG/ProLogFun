%% --------------------------------------------------------------
%% Módulo: programa04
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una función que devuelve la potencia
%% cuadrada de un número determinado.
%%
%% Corresponde al ejercicio 04
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa04).
-export([square/1, main/1]).

% Función creada
-spec square(integer()) -> integer().

% Instrucción a seguir cuando el valor es un int.
% Devuelve la potencia al cuadrado.
square(X) when is_integer(X) -> X * X.

% Toma entradas del makefile y las convierte a int
to_number(Arg) when is_atom(Arg) ->
    to_number(atom_to_list(Arg));
to_number(Str) when is_list(Str) ->
    case string:to_float(Str) of
        {error, no_float} -> list_to_integer(Str);
        {F, _} -> F
    end.

main([Arg]) ->
    try
        N = to_number(Arg),
        Result = square(N),
        io:format("The square of ~p is ~p~n", [N, Result])
    catch
        error:badarg ->
            io:format("Error: Please provide a valid integer as an argument.~n")
    end,
    erlang:halt(0).
