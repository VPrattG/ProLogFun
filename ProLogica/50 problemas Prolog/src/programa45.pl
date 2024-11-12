%% --------------------------------------------------------------
%% Nombre: programa45
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si la información proporcionada
%% resulta en un árbol binario o no.
%%
%% Corresponde al ejercicio 45
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% class Node:
%     def __init__(self, value, left=None, right=None):
%         self.value = value
%         self.left = left
%         self.right = right
%
% def is_tree(tree):
%     # Caso base: árbol vacío (nil)
%     if tree is None:
%         return True
%     
%     # Verifica que sea una instancia de Node
%     if not isinstance(tree, Node):
%         return False
%     
%     # Verifica recursivamente los subárboles
%     return is_tree(tree.left) and is_tree(tree.right)
%
% if __name__ == "__main__":
%     # Ejemplos de uso
%     # Árbol vacío
%     empty_tree = None
%     print("¿Es árbol vacío?:", is_tree(empty_tree))  # True
%     
%     # Árbol simple
%     simple_tree = Node(1)
%     print("¿Es árbol simple?:", is_tree(simple_tree))  # True
%     
%     # Árbol complejo
%     complex_tree = Node(1,
%         Node(2, Node(4), Node(5)),
%         Node(3, Node(6), None)
%     )
%     print("¿Es árbol complejo?:", is_tree(complex_tree))  # True
%     
%     # No es un árbol
%     not_tree = "esto no es un árbol"
%     print("¿Es no-árbol?:", is_tree(not_tree))  # False
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Verifica si un término dado representa un árbol binario.
% Un árbol binario está compuesto por un nodo raíz y dos subárboles.
istree(nil).
istree(t(_, L, R)) :- istree(L), istree(R).

% Formato para su función
% istree(árbol).
% Ejemplos:
% istree(nil).                          % true
% istree(t(1, nil, nil)).               % true
% istree(t(1, t(2, nil, nil), nil)).    % true
% ----------------------------------------------