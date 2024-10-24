%% --------------------------------------------------------------
%% Nombre: programa44
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa determina si un número ingresado es primo.
%% Devuelve true or false.
%%
%% Corresponde al ejercicio 44
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en Python (comentado) --------
% from heapq import heappush, heappop
% from dataclasses import dataclass
% from typing import Optional
%
% @dataclass
% class HuffmanNode:
%     freq: int
%     char: Optional[str] = None
%     left: Optional['HuffmanNode'] = None
%     right: Optional['HuffmanNode'] = None
%
%     def __lt__(self, other):
%         return self.freq < other.freq
%
% def build_huffman_tree(frequencies):
%     # Crear un montículo (heap) con los nodos iniciales
%     heap = []
%     for char, freq in frequencies.items():
%         heappush(heap, HuffmanNode(freq=freq, char=char))
%
%     # Construir el árbol
%     while len(heap) > 1:
%         # Tomar los dos nodos con menor frecuencia
%         left = heappop(heap)
%         right = heappop(heap)
%
%         # Crear un nuevo nodo interno
%         internal = HuffmanNode(
%             freq=left.freq + right.freq,
%             left=left,
%             right=right
%         )
%         heappush(heap, internal)
%
%     return heap[0] if heap else None
%
% def get_huffman_codes(node, prefix="", codes=None):
%     if codes is None:
%         codes = {}
%
%     if node.char is not None:
%         codes[node.char] = prefix
%     else:
%         if node.left:
%             get_huffman_codes(node.left, prefix + "0", codes)
%         if node.right:
%             get_huffman_codes(node.right, prefix + "1", codes)
%
%     return codes
%
% if __name__ == "__main__":
%     # Ejemplo de uso
%     frequencies = {
%         'a': 5,
%         'b': 9,
%         'c': 12,
%         'd': 13,
%         'e': 16,
%         'f': 45
%     }
%
%     tree = build_huffman_tree(frequencies)
%     codes = get_huffman_codes(tree)
%     
%     print("Códigos de Huffman:")
%     for char, code in sorted(codes.items()):
%         print(f"{char}: {code}")
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Genera un árbol de Huffman dado un conjunto de frecuencias.
% https://es.wikipedia.org/wiki/Codificación_Huffman
% El algoritmo de Huffman se utiliza para la compresión de datos, construyendo un árbol binario óptimo para la codificación.
huffman(Fs, Hs) :- 
    length(Fs, Len), 
    Len > 1, 
    sort(2, @=<, Fs, Sorted), 
    huffman_tree(Sorted, Hs).

% Caso base para construir el árbol de Huffman.
huffman_tree([fr(X, _) | []], hc(X, '0')).
huffman_tree([fr(_, _) | [fr(_, _) | _]], _).

example :-
    Frequencies = [fr(a, 5), fr(b, 9), fr(c, 12), fr(d, 13), fr(e, 16), fr(f, 45)],
    huffman(Frequencies, HuffmanTree),
    write(HuffmanTree).

% Se puede ejecutar simplemente escribiendo "example."
% ----------------------------------------------