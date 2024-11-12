%% --------------------------------------------------------------
%% Nombre: programa46
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa construye árboles binarios equilibrados.
%%
%% Corresponde al ejercicio 46
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
%         return f"Node('{self.value}', {self.left}, {self.right})"
%
% def divide_nodes(n):
%     """Divide los nodos entre los subárboles izquierdo y derecho."""
%     n1 = n // 2
%     n2 = n - n1
%     return n1, n2
%
% def create_balanced_tree(n):
%     """Crea un árbol binario completamente balanceado con n nodos."""
%     # Caso base: árbol vacío
%     if n == 0:
%         return None
%     
%     # Para n > 0, creamos un nodo y distribuimos los nodos restantes
%     n1, n2 = divide_nodes(n - 1)  # n-1 porque un nodo ya se usa como raíz
%     
%     # Creamos los subárboles recursivamente
%     left = create_balanced_tree(n1)
%     right = create_balanced_tree(n2)
%     
%     # Retornamos el árbol completo
%     return Node('x', left, right)
%
% def print_tree_structure(node, prefix="", is_left=True):
%     """Imprime el árbol de forma visual."""
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
%     # Ejemplo de uso para diferentes números de nodos
%     for n in range(4):
%         print(f"\nÁrbol balanceado con {n} nodos:")
%         tree = create_balanced_tree(n)
%         print_tree_structure(tree)
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Construye un árbol binario completamente equilibrado con N nodos.
% Un árbol completamente equilibrado tiene subárboles cuya diferencia de tamaño es como máximo 1.
cbal_tree(0, nil).
cbal_tree(N, t('x', L, R)) :- 
    N > 0, 
    N1 is N - 1, 
    divide(N1, N2, N3), 
    cbal_tree(N2, L), 
    cbal_tree(N3, R).

% Divide el número de nodos entre los dos subárboles.
divide(N, N1, N2) :- 
    N1 is N // 2, 
    N2 is N - N1.

% Formato para su función
% cbal_tree(N, Tree).
% Ejemplo: cbal_tree(4, T).
% ----------------------------------------------