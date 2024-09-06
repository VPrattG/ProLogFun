%% --------------------------------------------------------------
%% Módulo: problema01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa declara un tipo de contenedor para
%% dos puntos flotantes x, y.
%%
%% Corresponde al ejercicio 05
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa05).
-export([new/2, x/1, y/1]).

-opaque point() :: #{x => float(), y => float()}.
-export_type([point/0]).

-spec new(float(), float()) -> point().
new(X, Y) -> #{x => X, y => Y}.

-spec x(point()) -> float().
x(#{x := X}) -> X.

-spec y(point()) -> float().
y(#{y := Y}) -> Y.
