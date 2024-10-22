%% --------------------------------------------------------------
%% Nombre: programa47
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea árboles binarios simétricos.
%%
%% Corresponde al ejercicio 47
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
% def is_symmetric(tree):
%     """Verifica si un árbol binario es simétrico."""
%     if tree is None:
%         return True
%     return are_mirrors(tree.left, tree.right)
%
% def are_mirrors(left, right):
%     """Verifica si dos subárboles son espejos entre sí."""
%     # Si ambos son None, son espejos
%     if left is None and right is None:
%         return True
%     
%     # Si uno es None y el otro no, no son espejos
%     if left is None or right is None:
%         return False
%     
%     # Los subárboles son espejos si:
%     # 1. El izquierdo de uno es espejo del derecho del otro
%     # 2. El derecho de uno es espejo del izquierdo del otro
%     return are_mirrors(left.left, right.right) and are_mirrors(left.right, right.left)
%
% if __name__ == "__main__":
%     # Ejemplos de uso
%     
%     # Árbol vacío (simétrico)
%     empty_tree = None
%     print("¿Es simétrico el árbol vacío?:", is_symmetric(empty_tree))  # True
%     
%     # Árbol simétrico simple
%     symmetric_tree = Node(1,
%         Node(2, Node(4), Node(5)),
%         Node(2, Node(5), Node(4))
%     )
%     print("¿Es simétrico el árbol simétrico?:", is_symmetric(symmetric_tree))  # True
%     
%     # Árbol no simétrico
%     asymmetric_tree = Node(1,
%         Node(2, Node(4), None),
%         Node(2, None, Node(4))
%     )
%     print("¿Es simétrico el árbol asimétrico?:", is_symmetric(asymmetric_tree))  # False
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Comprueba si un árbol binario es simétrico.
% Un árbol es simétrico si sus subárboles izquierdo y derecho son espejos entre sí.
symmetric(nil).
symmetric(t(_, L, R)) :- mirror(L, R).

% Verifica si un árbol es el espejo de otro.
mirror(nil, nil).
mirror(t(_, L1, R1), t(_, L2, R2)) :- 
    mirror(L1, R2), 
    mirror(R1, L2).

% Formato para su función
% symmetric(Tree).
% Ejemplos:
% symmetric(nil).                                            % true
% symmetric(t(1, t(2, nil, nil), t(2, nil, nil))).           % true
% symmetric(t(1, t(2, nil, t(3,nil,nil)), t(2, nil, nil))).  % false
% ----------------------------------------------