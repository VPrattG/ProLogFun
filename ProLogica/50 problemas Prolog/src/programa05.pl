%% --------------------------------------------------------------
%% Nombre: programa05
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa invierte una lista creada por el usuario.
%%
%% Corresponde al ejercicio 05
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
%             Console.WriteLine("Programa que invierte una lista");
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
%             list.Reverse();
%             Console.WriteLine("Lista invertida: ");
%             foreach (string i in list)
%             {
%                 Console.Write($"| {i} ");
%             }
%             Console.WriteLine("|");
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Utiliza un acumulador para ir construyendo la lista invertida.
reverse_list(L, R) :- reverse_list(L, [], R).
% Si la lista está vacía, significa que el acumulador ya tiene la lista invertida
reverse_list([], Acc, Acc).
% Incorpora el elemento "cabeza" al acumulador
% De manera similar al programa04, verifica si la lista invertida
    % coincide con el segundo parámetro ingresado
reverse_list([H|T], Acc, R) :- reverse_list(T, [H|Acc], R).
% ----------------------------------------------