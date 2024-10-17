%% --------------------------------------------------------------
%% Módulo: programa17
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una estructura de datos de árbol
%% recursiva, desplegándola en la terminal.
%%
%% Corresponde al ejercicio 17
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa17).
-export([super_arbol/0]).

% Estructura de datos recursiva a usar
-record(node, {
    value :: any(),
    children = [] :: [#node{}]
}).

super_arbol() ->
    % Nodos hijos
    Branch1 = #node{value = "valor", children = []},
    Branch2 = #node{value = 5, children = []},

    OtherBranch1 = #node{value = "cuatro", children = []},
    OtherBranch2 = #node{value = "otro", children = []},

    % Nodos hijos, con sus propios hijos
    Leaf1 = #node{value = 1, children = [Branch1, Branch2]},
    Leaf2 = #node{value = 2, children = [OtherBranch2, OtherBranch1]},

    % Nodo raíz
    Parent = #node{value = 3, children = [Leaf1, Leaf2]},

    % Inicia la secuencia para imprimir los nodos
    super_arbol(Parent).

% Función auxiliar a super_arbol(), permite que esta se llame sin parámetros, pero se repita con parámetros preestablecidos
super_arbol(Nodo) ->
    % Imprimir el valor del nodo actual
    io:format("~p~n", [Nodo#node.value]),
    % Llamada recursiva por cada nodo hijo
    lists:foreach(fun(Child) -> super_arbol(Child) end, Nodo#node.children).
