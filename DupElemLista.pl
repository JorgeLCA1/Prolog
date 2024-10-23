% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Duplicar los elementos de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3, 4 };
%         List<int> duplicatedList = Dupli(list);
%         Console.WriteLine(string.Join(", ", duplicatedList));
%     }

%     // % Duplica los elementos de una lista.
%     static List<int> Dupli(List<int> list)
%     {
%         // % Caso base: la lista vacía se mantiene vacía.
%         if (list.Count == 0)
%         {
%             return new List<int>();
%         }

%         // % Caso recursivo: duplica el primer elemento y continúa con el resto.
%         List<int> result = new List<int> { list[0], list[0] };  // Duplica el primer elemento
%         result.AddRange(Dupli(list.GetRange(1, list.Count - 1)));  // Continúa con el resto
%         return result;
%     }
% }
% =============PROLOG============
% Duplica los elementos de una lista.
% Caso base: la lista vacía se mantiene vacía.
dupli([], []).
% Caso recursivo: duplica el primer elemento y continúa con el resto.
dupli([H|T], [H,H|R]) :- dupli(T, R).
