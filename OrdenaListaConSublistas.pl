% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Ordena una lista de listas de acuerdo con la longitud de las sublistas.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%======================C#===================

% using System;
% using System.Collections.Generic;
% using System.Linq;

% class Program
% {
%     static void Main()
%     {
%         List<List<int>> listOfLists = new List<List<int>>
%         {
%             new List<int> { 1, 2 },
%             new List<int> { 1, 2, 3 },
%             new List<int> { 1 },
%             new List<int> { 1, 2, 3, 4 }
%         };
%         
%         var sortedLists = LSort(listOfLists);
%         
%         foreach (var sublist in sortedLists)
%         {
%             Console.WriteLine("Sublista: " + string.Join(", ", sublist));
%         }
%     }
% 
%     static List<List<T>> LSort<T>(List<List<T>> lists)
%     {
%         return lists.OrderBy(list => list.Count).ToList();
%     }
% }
