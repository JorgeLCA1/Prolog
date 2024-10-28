% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Agrupa los elementos de un conjunto en subconjuntos disjuntos dados los tamaños de los subgrupos.
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
%         List<int> sizes = new List<int> { 2, 3 }; // Tamaños de los subgrupos
%         List<int> elements = new List<int> { 1, 2, 3, 4, 5, 6 };
%         
%         var groups = Group(elements, sizes);
%         
%         foreach (var group in groups)
%         {
%             Console.WriteLine("Grupo: " + string.Join(", ", group));
%         }
%     }
% 
%     static List<List<List<T>>> Group<T>(List<T> elements, List<int> sizes)
%     {
%         List<List<List<T>>> result = new List<List<List<T>>>();
%         GroupHelper(elements, sizes, new List<List<T>>(), result);
%         return result;
%     }
% 
%     static void GroupHelper<T>(List<T> elements, List<int> sizes, List<List<T>> currentGroups, List<List<List<T>>> result)
%     {
%         if (sizes.Count == 0)
%         {
%             result.Add(new List<List<T>>(currentGroups));
%             return;
%         }
%         
%         int groupSize = sizes[0];
%         sizes.RemoveAt(0); // Tomar el tamaño del grupo
%         
%         foreach (var combination in GetCombinations(elements, groupSize))
%         {
%             List<T> newGroup = combination.ToList();
%             currentGroups.Add(newGroup);
%             
%             List<T> remainingElements = elements.Except(newGroup).ToList();
%             GroupHelper(remainingElements, sizes, currentGroups, result);
%             
%             currentGroups.RemoveAt(currentGroups.Count - 1); // Retroceder
%         }
%         
%         sizes.Insert(0, groupSize); // Restaurar el tamaño del grupo
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
%             current.RemoveAt(current.Count - 1); // Retroceder
%         }
%     }
% }
% Agrupa los elementos de un conjunto en subconjuntos disjuntos dados los tamaños de los subgrupos.
group([], [], []).
group([N|Ns], Es, [G|Gs]) :- combination(N, Es, G), subtract(Es, G, Rest), group(Ns, Rest, Gs).
