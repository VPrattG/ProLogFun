%% --------------------------------------------------------------
%% Nombre: programa01
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa imprime el último elemento de una lista
%% creada por el usuario.
%%
%% Corresponde al ejercicio 01
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
%             Console.WriteLine("Programa que devuelve el último elemento de una lista");
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
%                 Console.WriteLine($"El último elemento es {list[list.Count - 1]}");
%             }
%             catch (ArgumentOutOfRangeException e)
%             {
%                 Console.WriteLine("La lista no puede estar vacía");
%             }
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Se obtiene el valor X de una lista con la función my_last(X, List)

% Si solo hay un valor, se devuelve
my_last(X, [X]).

% Si hay más de uno, se remueve el primer valor y se vuelve a llamar a sí mismo
my_last(X, [_|Tail]) :-
    my_last(X, Tail).

% Ejemplo de uso:
% ?- my_last(X, [a, b, c, d]).
% X = d.
% ----------------------------------------------