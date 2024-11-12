%% --------------------------------------------------------------
%% Nombre: programa04
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa indica si el número ingresado coincice
%% con la cantidad de elementos en una lista creada por el usuario
%%
%% Corresponde al ejercicio 04
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
%             Console.WriteLine("Programa que indica la cantidad de elementos de una lista");
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
%                 Console.Write("¿Cuántos elementos se agregaron? ");
%                 position = int.Parse(Console.ReadLine());
%                 if(position == list.Count)
%                 {
%                     Console.WriteLine($"Correcto, la cantidad de elementos es: {list.Count}");
%                 }
%                 else
%                 {
%                     Console.WriteLine($"Incorrecto, la cantidad de elementos es: {list.Count}");
%                 }
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
% Calcula el número de elementos de una lista.
% Cuando no hay elementos en la lista
list_length([], 0).
% Si hay más de uno, se remueve el primero, y se llama otra vez
% A N se le suma la cantidad de elementos restantes, y se vuelve a llamar la función
list_length([_|T], N) :- list_length(T, N1), N is N1 + 1.
% El programa revisa si lo introducido coincide con lo que encuentra
% Ejemplo: list_length([1, 2, 3, 4], 4)
% Se comprueba que hay 4 elementos y se proporcionó un 4
% Son el mismo valor, así que devuelve true
% En cambio, si llega a ser list_length([1, 2, 3, 4], 5)
% Lo que encuentra no coincide con lo que se le dio
% Por ende, devuelve false
% ----------------------------------------------