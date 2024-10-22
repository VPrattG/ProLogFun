%% --------------------------------------------------------------
%% Nombre: programa50
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa construye árboles binarios equilibrados
%% en altura.
%%
%% Corresponde al ejercicio 50
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
%  class TreeNode:
%      """Clase para representar un nodo de un árbol binario."""
%      def __init__(self, value, left=None, right=None):
%          self.value = value
%          self.left = left
%          self.right = right

%  def hbal_tree(height):
%      """Construye un árbol binario equilibrado en altura con una altura dada."""
%      if height == 0:
%          return None  # Un árbol vacío
%      left = hbal_tree(height - 1)
%      right = hbal_tree(height - 2)  # H2 es H1 - 1
%      return TreeNode('x', left, right)

%  def generate_hbal_trees(max_height):
%      """Genera todos los árboles binarios equilibrados en altura hasta la altura máxima."""
%      trees = []
%      for h in range(max_height + 1):
%          trees.append(hbal_tree(h))
%      return trees
%  ----------------------------------------------

% -------- Código en Prolog --------------------
% Construye un árbol binario equilibrado en altura con una altura dada.
% Un árbol equilibrado en altura tiene subárboles cuya diferencia de altura es como máximo 1.
hbal_tree(0, nil).
hbal_tree(H, t('x', L, R)) :- 
    H > 0, 
    H1 is H - 1, 
    H2 is H1 - 1, 
    hbal_tree(H1, L), 
    hbal_tree(H2, R).
% ----------------------------------------------
