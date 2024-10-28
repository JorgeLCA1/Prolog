% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
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
%             new List<int> { 1, 2 },
%             new List<int> { 1, 2, 3, 4 }
%         };
%         
%         var frequency = LengthFrequency(listOfLists);
%         
%         foreach (var pair in frequency)
%         {
%             Console.WriteLine($"Longitud: {pair.Length}, Frecuencia: {pair.Frequency}");
%         }
%     }
% 
%     static List<FrequencyPair> LengthFrequency<T>(List<List<T>> lists)
%     {
%         var lengthCounts = lists.GroupBy(list => list.Count)
%                                  .Select(group => new FrequencyPair { Length = group.Key, Frequency = group.Count() })
%                                  .ToList();
%         return lengthCounts;
%     }
% 
%     public class FrequencyPair
%     {
%         public int Length { get; set; }
%         public int Frequency { get; set; }
%     }
% }
% Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
length_frequency(L, F) :- map_list_to_pairs(length, L, P), msort(P, SP), encode(SP, F).
