% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Genera todas las combinaciones de K elementos seleccionados de una lista dada.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%======================C#===================

% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3, 4, 5 };
%         int k = 3; // Número de elementos en cada combinación
%         var combinations = GetCombinations(list, k);
%         
%         foreach (var combination in combinations)
%         {
%             Console.WriteLine("Combinación: " + string.Join(", ", combination));
%         }
%     }
% 
%     static List<List<T>> GetCombinations<T>(List<T> list, int k)
%     {
%         List<List<T>> result = new List<List<T>>();
%         GenerateCombinations(list, k, 0, new List<T>(), result);
%         return result;
%     }
% 
%     static void GenerateCombinations<T>(List<T> list, int k, int startIndex, List<T> current, List<List<T>> result)
%     {
%         if (k == 0)
%         {
%             result.Add(new List<T>(current));
%             return;
%         }
% 
%         for (int i = startIndex; i <= list.Count - k; i++)
%         {
%             current.Add(list[i]);
%             GenerateCombinations(list, k - 1, i + 1, current, result);
%             current.RemoveAt(current.Count - 1); // Backtrack
%         }
%     }
% }
% Genera todas las combinaciones de K elementos seleccionados de una lista dada.
combination(0, _, []).
combination(K, [H|T], [H|Comb]) :- K > 0, K1 is K - 1, combination(K1, T, Comb).
combination(K, [_|T], Comb) :- K > 0, combination(K, T, Comb).
