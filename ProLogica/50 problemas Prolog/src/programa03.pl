%% --------------------------------------------------------------
%% Nombre: programa03
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa devuelve el elemento k de una lista
%% creada por el usuario.
%%
%% Corresponde al ejercicio 03
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
%             int position;
%             bool loop;
%             Console.WriteLine("Programa que devuelve un elemento 'k' de una lista");
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
%                 Console.Write($"¿Qué valor quieres encontrar? La cantidad de elementos es {list.Count}: ");
%                 position = int.Parse( Console.ReadLine());
%                 if(position <= 0)
%                 {
%                     Console.WriteLine("Número inválido, se devolverá el primer valor");
%                     position = 1;
%                 }
%                 Console.WriteLine($"El valor #{position} de la lista es {list[position - 1]}");
%             }
%             catch (ArgumentOutOfRangeException e)
%             {
%                 Console.WriteLine("La lista no contiene un elemento en esta posición.");
%             }
%             catch(FormatException e)
%             {
%                 Console.WriteLine("Intente de nuevo, pero ingrese un número esta vez.");
%             }
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Si se hay un elemento y busca el valor k, se devuelve
element_at(X, [X|_], 1).
% Si hay más elementos, se descarta el primer valor
%   Se le resta 1 a k
%   Se vuelve a llamar la función
element_at(X, [_|T], K) :- K > 1, K1 is K - 1, element_at(X, T, K1).
% ----------------------------------------------