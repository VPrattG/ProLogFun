%% --------------------------------------------------------------
%% Nombre: programa02
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa devuelve el penúltimo elemento de una
%% lista creada por el usuario.
%%
%% Corresponde al ejercicio 02
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en C# (comentado) ------------
% using System.Collections;
%
% namespace ConsoleApp1
% {
%     internal class Program
%     {
%         static void Main(string[] args)
%         {
%             List<string> list = new List<string>();
%             string storer;
%             bool loop;
%             Console.WriteLine("Programa que devuelve el penúltimo elemento de una lista");
%             Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
%             try
%             {
%                 do
%                 {
%                     Console.Write("Ingrese un valor para la lista (Deje en blanco para parar): ");
%                     storer = Console.ReadLine();
%                     if (!string.IsNullOrEmpty(storer))
%                     {
%                         list.Add(storer);
%                         loop = true;
%                     }
%                     else
%                     {
%                         loop = false;
%                     }
%                 } while (loop == true);
%                 Console.WriteLine($"El último elemento es {list[list.Count - 2]}");
%             }
%             catch (ArgumentOutOfRangeException e)
%             {
%                 Console.WriteLine("La lista debe tener por lo menos dos elementos");
%             }
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Encuentra el penúltimo elemento de una lista.
% Cuando quedan dos elementos, se descarta el último y devuelve el que queda.
penultimate(X, [X, _]).
% Cuando hay más de dos elementos, se descarta el primero y se vuelve a llamar la función.
penultimate(X, [_|T]) :- penultimate(X, T).
% ----------------------------------------------