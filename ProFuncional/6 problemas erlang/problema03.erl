%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa extrae la fecha actual y la imprime
%%
%% Corresponde al ejercicio 61
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(problema03).
-export([fecha/0]).

fecha() ->
    % calendar:local_time() regresa una tupla, aquí se asignan variables para cada parte
    {{A, Me, D}, {H, Mi, S}} = calendar:local_time(),
    % ~(número) indica el ancho mínimo, 0 indica con qué llenarse si el ancho es menor al mínimo
    % w establece el formato
    io:format("Fecha y hora: ~4..0w-~2..0w-~2..0w ~2..0w:~2..0w:~2..0w ~n", [A, Me, D, H, Mi, S]).
