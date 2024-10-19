%% --------------------------------------------------------------
%% Nombre: programa06
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa verifica si una lista ingresada es un
%% palíndromo o no.
%%
%% Corresponde al ejercicio 06
%%
%% Fecha: 17 de octubre de 2024
%% --------------------------------------------------------------

% -------- Código en C# (comentado) ------------
% using System.Collections;
% using System.Linq.Expressions;

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
%             Console.WriteLine("Programa que revisa si una lista es un palíndromo");
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
%             list2 = list.ToList();
%             Console.WriteLine("Lista normal: ");
%             foreach (string i in list)
%             {
%                 Console.Write($"| {i} ");
%             }
%             Console.WriteLine("|");
%             list2.Reverse();
%             Console.WriteLine("Lista invertida: ");
%             foreach (string i in list2)
%             {
%                 Console.Write($"| {i} ");
%             }
%             Console.WriteLine("|");
%             if (list.SequenceEqual(list2))
%             {
%                 Console.WriteLine("La lista es un palíndromo");
%             }
%             else
%             {
%                 Console.WriteLine("La lista no es un palíndromo");
%             }
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Verifica si una lista es un palíndromo (si es igual a su inversa).
% Se llama la función de invertir lista con esta misma como los dos parámetros
% Si carga programa05, se puede usar sin problemas
% De otro modo, se debería ingresar la función aquí
palindrome(L) :- reverse_list(L, L).


% reverse_list(L, R) :- reverse_list(L, [], R).
% reverse_list([], Acc, Acc).
% reverse_list([H|T], Acc, R) :- reverse_list(T, [H|Acc], R).
% ----------------------------------------------