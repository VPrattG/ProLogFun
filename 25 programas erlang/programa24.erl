%% --------------------------------------------------------------
%% Módulo: programa24
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa declara una cadena con una palabra
%% japonesa, imprimiéndola.
%%
%% Corresponde al ejercicio 24
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa24).
-export([neko/0]).

neko() ->
    % Se asigna el valor,  para después usarlos
    S = unicode:characters_to_binary("ネコ"),
    io:format("La cadena es: ~s~n", [S]).
