%% --------------------------------------------------------------
%% Nombre: programa07
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa aplana listas anidadas en una lista
%%
%% Corresponde al ejercicio 07
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en C# (comentado) ------------
% using System.Collections;
% using System.Linq.Expressions;
%
% namespace ConsoleApp1
% {
%     internal class Program
%     {
%         static void Main(string[] args)
%         {
%             List<List<string>> superList = new List<List<string>>
%             {
%                 new List<string> { "a", "b" },
%                 new List<string> { "c", "d" },
%                 new List<string> { "e", "f"}
%             };
%             Console.WriteLine("Programa que aplana una lista");
%             Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
%             Console.WriteLine("Lista con listas:");
%             foreach (List<string> lista in superList)
%             {
%                 Console.WriteLine(lista);
%                 foreach (string s in lista)
%                 {
%                     Console.Write($"| {s} ");
%                 }
%                 Console.WriteLine("|");
%             }
%             var listValues = superList.SelectMany(i => i);
%             Console.WriteLine("Lista aplanada: ");
%             foreach(var value in listValues)
%             {
%                 Console.Write($"| {value} ");
%             }
%             Console.WriteLine("|");
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Aplana una lista anidada en una lista simple.
% Si una lista está vacía, se puede considerar aplanada
my_flatten([], []).
% Caso recursivo: si la cabeza es una lista, aplana la cabeza y la cola recursivamente.
my_flatten([H|T], Flat) :- my_flatten(H, FH), my_flatten(T, FT), append(FH, FT, Flat).
% Si la cabeza no es una lista, simplemente agrégala al resultado.
my_flatten(X, [X]) :- X \= [], \+ is_list(X).
% ----------------------------------------------