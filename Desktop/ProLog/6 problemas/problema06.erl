%% --------------------------------------------------------------
%% Módulo: problema06
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa calcula la potencia del primer argumento
%% elevado hasta el segundo argumento insertado.
%%
%% Corresponde al ejercicio 32
%%
%% Fecha: 03 de septiembre de 2024
%% --------------------------------------------------------------

-module(problema06).
-export([exp/2]).

exp(X, N) -> exp(X, N, 1).

% Cuando la potencia es 0
exp(_X, 0, Y) ->
    % Se devuelve y, su valor predeterminado es 1.
    Y;
% Cuando la potencia restante es par
exp(X, N, Y) when N rem 2 =:= 0 ->
    % Se multiplica x por si mismo y se divide n entre dos
    % Las divisiones en erlang se redondean hacia abajo
    exp(X * X, N div 2, Y);
% Cuando la potencia restante es impar
exp(X, N, Y) ->
    % Se multiplica x por sí misma, n se divide entre 2, y se multiplica por x (sigue siendo el valor antes de x*x)
    exp(X * X, N div 2, X * Y).
