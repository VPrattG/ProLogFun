%% --------------------------------------------------------------
%% Nombre: programa11
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa modifica el RLE para dejar solos a los
%% elementos que no se repiten.
%%
%% Corresponde al ejercicio 11
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en C# (comentado) ------------
% using System.Collections;

% namespace ConsoleApp1
% {
%     internal class Program
%     {
%         static void Main(string[] args)
%         {
%             var list = new List<int> { 1, 1, 2, 3, 3, 3, 4 };
%             var encodedList = EncodeModified(list);

%             Console.WriteLine(string.Join(", ", encodedList));
%         }

%         public static List<object> EncodeModified(List<int> L)
%         {
%             var enc = Encode(L);
%             return Modify(enc);
%         }

%         public static List<object> Modify(List<List<object>> enc)
%         {
%             var result = new List<object>();

%             foreach (var item in enc)
%             {
%                 if (item.Count == 2 && (int)item[0] == 1)
%                 {
%                     result.Add(item[1]);
%                 }
%                 else
%                 {
%                     result.Add(item);
%                 }
%             }

%             return result;
%         }

%         public static List<List<object>> Encode(List<int> L)
%         {
%             var packed = Pack(L);
%             return Transform(packed);
%         }

%         public static List<List<object>> Transform(List<List<int>> packed)
%         {
%             var result = new List<List<object>>();

%             foreach (var group in packed)
%             {
%                 int count = group.Count;
%                 result.Add(new List<object> { count, group[0] });
%             }

%             return result;
%         }

%         public static List<List<int>> Pack(List<int> L)
%         {
%             var result = new List<List<int>>();
%             if (L.Count == 0) return result;

%             var current = new List<int> { L[0] };

%             for (int i = 1; i < L.Count; i++)
%             {
%                 if (L[i] == L[i - 1])
%                 {
%                     current.Add(L[i]);
%                 }
%                 else
%                 {
%                     result.Add(current);
%                     current = new List<int> { L[i] };
%                 }
%             }

%             result.Add(current);
%             return result;
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Modifica la codificación Run-Length de una lista.
% Si un elemento no tiene duplicados, se mantiene sin empaquetar.
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

% Caso base: lista vacía.
modify([], []).
% Si hay solo un elemento, agrégalo directamente.
modify([[1,X]|T], [X|R]) :- modify(T, R).
% Si hay más de un elemento, mantén el formato (N, X).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).
% ----------------------------------------------