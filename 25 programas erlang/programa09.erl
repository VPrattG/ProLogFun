%% --------------------------------------------------------------
%% Módulo: programa09
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa define un árbol y lo imprime.
%%
%% Corresponde al ejercicio 09
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa09).
-export([print_tree/1, example_tree/0]).

% Definición del tipo de árbol binario
% Llamar mediante
% T = programa09:example_tree(),
%     programa09:print_tree(T).
-type binary_tree(T) ::
    #{
        data := T,
        left := binary_tree(T) | nil,
        right := binary_tree(T) | nil
    }.

% Función para imprimir el árbol en orden in-order
print_tree(nil) ->
    ok;
print_tree(Tree) ->
    % Primero recorrer el subárbol izquierdo
    print_tree(maps:get(left, Tree, nil)),
    % Luego imprimir el valor del nodo actual
    io:format("~p~n", [maps:get(data, Tree)]),
    % Finalmente recorrer el subárbol derecho
    print_tree(maps:get(right, Tree, nil)).

% Función que devuelve un ejemplo de un árbol
example_tree() ->
    #{
        data => 10,
        left => #{
            data => 5,
            left => nil,
            right => nil
        },
        right => #{
            data => 20,
            left => nil,
            right => nil
        }
    }.
