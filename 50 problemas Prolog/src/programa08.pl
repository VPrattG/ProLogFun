%% --------------------------------------------------------------
%% Nombre: programa08
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa elimina valores idénticos consecutivos
%% en una lista creada por el usuario.
%%
%% Corresponde al ejercicio 08
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
%             List<string> list2 = new List<string>();
%             string storer;
%             bool loop;
%             Console.WriteLine("Programa que elimina duplicados de una lista");
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
%             list2.Add(list[0]);
%             for (int i = 1; i < list.Count(); i++)
%             {
%                 if (list[i] != list[i - 1])
%                 {
%                     list2.Add(list[i]);
%                 }
%             }
%             Console.WriteLine("Lista comprimida: ");
%             foreach (string i in list2)
%             {
%                 Console.Write($"| {i} ");
%             }
%             Console.WriteLine("|");
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Si una lista está vacía o hay un solo elemento, se entiende que no hay duplicados
compress([], []).
compress([X], [X]).

% Si hay elementos idénticos seguidos, se remueve el primero
compress([X,X|T], R) :- compress([X|T], R).
% Si el primer y segundo elemento son distintos, se conserva el primero.
compress([X,Y|T], [X|R]) :- X \= Y, compress([Y|T], R).
% ----------------------------------------------