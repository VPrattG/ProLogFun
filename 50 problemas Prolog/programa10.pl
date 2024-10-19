%% --------------------------------------------------------------
%% Nombre: programa10
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa crea una lista mediante la codificación
%% Run-Length.
%%
%% Corresponde al ejercicio 
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
%             List<string> list = new List<string>();
%             List<(string value, int count)> list2 = new List<(string value, int count)>();
            
%             string storer;
%             int position = 1;
%             bool loop;
            
%             Console.WriteLine("Programa que agrupa duplicados de una lista (Versión RLE)");
%             Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            
%             do
%             {
%                 Console.Write("Ingrese un valor para la lista (Deje en blanco para parar): ");
%                 storer = Console.ReadLine();
%                 if (!string.IsNullOrEmpty(storer))
%                 {
%                     list.Add(storer);
%                     loop = true;
%                 }
%                 else
%                 {
%                     loop = false;
%                 }
%             } while (loop == true);
            
%             Console.WriteLine("Lista normal: ");
            
%             foreach (string i in list)
%             {
%                 Console.Write($"| {i} ");
%             }
%             Console.WriteLine("|");
            
%             for (int i = 1; i < list.Count(); i++)
%             {
%                 if (list[i] == list[i - 1])
%                 {
%                     position++;
%                 }
%                 else
%                 {
%                     list2.Add((list[i - 1], position));
%                     position = 1;
%                 }
%             }
%             list2.Add((list[^1], position));

%             Console.WriteLine("Lista agrupada con RLE: ");
%             foreach(var (value, times) in list2)
%             {
%                 Console.Write($"| {times}, \"{value}\" ");
%             }
%             Console.WriteLine("|");
            
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Codifica una lista usando codificación Run-Length.
% Se agrupan los duplicados para volverlos en tuplas de [veces, valor]
encode(L, R) :- pack(L, P), transform(P, R).

% Transformación en sublistas. N es cuántas veces aparece
transform([], []).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :- length([X|Xs], N), transform(Ys, Zs).
% ----------------------------------------------