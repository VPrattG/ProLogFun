%% --------------------------------------------------------------
%% Nombre: programa09
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa agrupa los elementos duplicados en
%% una lista creada por el usuario
%%
%% Corresponde al ejercicio 09
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
%             List<List<string>> list2 = new List<List<string>>();
%             List<string> currentGroup = new List<string>();
%             string storer;
%             bool loop;
%             Console.WriteLine("Programa que agrupa duplicados de una lista");
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
            
%             currentGroup = new List<string> { list[0] };
%             for (int i = 1; i < list.Count(); i++)
%             {
%                 if (list[i] == list[i - 1])
%                 {
%                     //list2.Add(list[i]);
%                     currentGroup.Add(list[i]);
%                 }
%                 else
%                 {
%                     list2.Add(currentGroup);
%                     currentGroup = new List<string> { list[i] };
%                 }
%             }
%             list2.Add(currentGroup);

%             Console.WriteLine("Lista agrupada: ");
%             foreach (List<string> i in list2)
%             {
%                 Console.WriteLine(i);
%                 foreach(string s in i)
%                 {
%                     Console.Write($"| {s} ");
%                 }
%                 Console.WriteLine("|");
%             }
            
%         }
%     }
% }
% ----------------------------------------------

% -------- Código en Prolog --------------------
% Agrupa duplicados consecutivos de una lista en sublistas.
% Una lista vacía no necesita agrupar nada
pack([], []).
% Mueve cada elemento consecutivo en su propia lista
pack([X|Xs], [[X|Ys]|Zs]) :- transfer(X, Xs, Ys, Rest), pack(Rest, Zs).

% Transfiere los elementos duplicados consecutivos a una sublista.
transfer(X, [], [], []).
% Si el siguiente elemento es diferente, termina la transferencia.
transfer(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
% Si el siguiente elemento es igual, agrégalo a la sublista.
transfer(X, [X|Xs], [X|Ys], Rest) :- transfer(X, Xs, Ys, Rest).
% ----------------------------------------------