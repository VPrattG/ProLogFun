%% --------------------------------------------------------------
%% Nombre: programa49
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa construye todos los árboles binarios
%% simétricos y completamente equilibrados con cierta cantidad de nodos.
%%
%% Corresponde al ejercicio 49
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% class Node:
%     def __init__(self, left=None, right=None):
%         self.left = left
%         self.right = right

% def generate_cbal_trees(n):
%     """Genera todos los árboles binarios completamente equilibrados con n nodos."""
%     if n == 0:
%         return [None]
    
%     if n == 1:
%         return [Node()]
    
%     # n debe ser impar para un árbol completamente equilibrado
%     if n % 2 == 0:
%         return []
    
%     trees = []
%     # Número de nodos en el subárbol izquierdo/derecho
%     n_sub = (n - 1) // 2
    
%     # Generamos todos los posibles subárboles
%     left_trees = generate_cbal_trees(n_sub)
    
%     # Para un árbol completamente equilibrado, ambos subárboles deben tener
%     # el mismo número de nodos
%     for left in left_trees:
%         for right in left_trees:
%             trees.append(Node(left, right))
            
%     return trees

% def is_symmetric(tree):
%     """Verifica si un árbol binario es simétrico."""
%     if tree is None:
%         return True
%     return is_symmetric_helper(tree.left, tree.right)

% def is_symmetric_helper(left, right):
%     """Función auxiliar para verificar simetría."""
%     if left is None and right is None:
%         return True
%     if left is None or right is None:
%         return False
%     return is_symmetric_helper(left.left, right.right) and \
%            is_symmetric_helper(left.right, right.left)

% def sym_cbal_trees(n):
%     """
%     Genera todos los árboles binarios simétricos y completamente equilibrados
%     con n nodos.
%     """
%     all_trees = generate_cbal_trees(n)
%     return [tree for tree in all_trees if is_symmetric(tree)]

% # Ejemplo de uso
% n = 7
% trees = sym_cbal_trees(n)
% print(f"Número de árboles simétricos y completamente equilibrados con {n} nodos: {len(trees)}")
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera todos los árboles binarios simétricos y completamente equilibrados con N nodos.
% Utiliza el paradigma de generar y probar para encontrar todos los árboles que cumplen ambas propiedades.
sym_cbal_trees(N, Ts) :- 
    findall(T, (cbal_tree(N, T), symmetric(T)), Ts).

% Función auxiliar para imprimir árboles
print_trees([]).
print_trees([T|Ts]) :-
    write('Árbol: '), write(T), nl,
    print_trees(Ts).

% Ejemplo para usar en el makefile
example(N) :-
    sym_cbal_trees(N, Ts),
    write('Árboles simétricos balanceados de '), write(N), write(' nodos:'), nl,
    print_trees(Ts).

% necesita cargar programa46 y programa47
% ----------------------------------------------

