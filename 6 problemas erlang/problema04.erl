%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa obtiene una cadena del usuario, la
%% invierte, y la imprime en la consola
%%
%% Corresponde al ejercicio 41
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(problema04).
-export([inverso/1, main/1]).

% Lo capturado se invierte y naturalmente se imprime en pantalla
inverso(Cadena) when is_list(Cadena) ->
    Reverse = lists:reverse(Cadena),
    io:format("Cadena invertida: ~s~n", [Reverse]);
inverso(Atom) when is_atom(Atom) ->
    inverso(atom_to_list(Atom)).

main([Arg]) ->
    inverso(Arg).
