%% --------------------------------------------------------------
%% Módulo: programa05
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa declara un tipo de contenedor para
%% dos puntos flotantes x, y.
%%
%% Corresponde al ejercicio 05
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa05).
-export([new/2, x/1, y/1, main/1]).

% Tipo opaco, mapa con valores flotantes 'x' y 'y'
-opaque point() :: #{x => float(), y => float()}.
% Exportado para su uso en otras partes
-export_type([point/0]).

% Función que recibe dos variables y devuelve un point
-spec new(float(), float()) -> point().
% Crea un mapa con las claves 'x' y 'y' con los valores proporcionados
new(X, Y) -> #{x => X, y => Y}.

-spec x(point()) -> float().
% Extrae el valor 'x' de point() y devuelve un valor flotante
x(#{x := X}) -> X.

-spec y(point()) -> float().
% Extrae el valor 'y' de point() y devuelve un valor flotante
y(#{y := Y}) -> Y.

% Convierte valores del makefile en int
to_number(Arg) when is_atom(Arg) ->
    to_number(atom_to_list(Arg));
to_number(Str) when is_list(Str) ->
    case string:to_float(Str) of
        {error, no_float} -> list_to_integer(Str);
        {F, _} -> F
    end.

% Función a utilizar
main([X, Y]) ->
    PointX = to_number(X),
    PointY = to_number(Y),
    Contenedor = new(PointX, PointY),
    io:format("Contenedor creado: ~w~n", [Contenedor]).
