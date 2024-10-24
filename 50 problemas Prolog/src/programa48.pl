%% --------------------------------------------------------------
%% Nombre: programa48
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea árboles binarios de búsqueda.
%%
%% Corresponde al ejercicio 48
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
%     def __str__(self):
%         return f"Node({self.value}, {self.left}, {self.right})"
%
% def construct_bst(numbers):
%     """Construye un árbol binario de búsqueda a partir de una lista de números."""
%     if not numbers:
%         return None
%     
%     tree = None
%     for num in numbers:
%         tree = add_node(tree, num)
%     return tree
%
% def add_node(tree, value):
%     """Añade un valor al árbol binario de búsqueda."""
%     # Si el árbol está vacío, crea un nuevo nodo
%     if tree is None:
%         return Node(value)
%     
%     # Si el valor es menor que la raíz, va al subárbol izquierdo
%     if value < tree.value:
%         tree.left = add_node(tree.left, value)
%     # Si el valor es mayor o igual, va al subárbol derecho
%     else:
%         tree.right = add_node(tree.right, value)
%     
%     return tree
%
% def print_bst_inorder(node):
%     """Imprime el árbol en orden (izquierda-raíz-derecha) para verificar que está ordenado."""
%     if node:
%         print_bst_inorder(node.left)
%         print(node.value, end=' ')
%         print_bst_inorder(node.right)
%
% def print_tree_structure(node, prefix="", is_left=True):
%     """Imprime la estructura visual del árbol."""
%     if node is None:
%         print(prefix + ("└── " if is_left else "┌── ") + "nil")
%         return
%
%     print(prefix + ("└── " if is_left else "┌── ") + str(node.value))
%
%     if node.left or node.right:
%         new_prefix = prefix + ("    " if is_left else "│   ")
%         print_tree_structure(node.left, new_prefix, True)
%         print_tree_structure(node.right, new_prefix, False)
%
% if __name__ == "__main__":
%     # Ejemplo de uso
%     numbers = [5, 3, 7, 1, 4, 6, 8]
%     bst = construct_bst(numbers)
%     
%     print("Números originales:", numbers)
%     print("\nÁrbol resultante (estructura):")
%     print_tree_structure(bst)
%     
%     print("\nRecorrido en orden (debe estar ordenado):")
%     print_bst_inorder(bst)
%     print()
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Construye un árbol binario de búsqueda a partir de una lista de enteros.
% Un árbol binario de búsqueda es un árbol en el cual, para cada nodo, todos los elementos 
% en el subárbol izquierdo son menores y en el subárbol derecho son mayores.
construct([], nil).
construct([X|Xs], T) :- 
    construct(Xs, T1), 
    add(X, T1, T).

% Añade un nodo a un árbol binario de búsqueda.
add(X, nil, t(X, nil, nil)).
add(X, t(Root, L, R), t(Root, NL, R)) :- 
    X < Root, 
    add(X, L, NL).
add(X, t(Root, L, R), t(Root, L, NR)) :- 
    X >= Root, 
    add(X, R, NR).

% Formato para su función
% construct([lista de números], Tree).
% Ejemplo: construct([5,3,7,1,4,6,8], T).
% ----------------------------------------------