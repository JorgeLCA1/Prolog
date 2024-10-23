% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que Codifica una lista usando codificación Run-Length.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% using System.Collections.Generic;
% using System.Linq;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 1, 2, 3, 3, 3, 4 };
%         List<Tuple<int, int>> encodedList = Encode(list);
%         foreach (var pair in encodedList)
%         {
%             Console.WriteLine($"({pair.Item1}, {pair.Item2})");
%         }
%     }

%     // % Codifica una lista usando codificación Run-Length.
%     // % Primero agrupa los duplicados y luego transforma las sublistas en parejas (N, X).
%     static List<Tuple<int, int>> Encode(List<int> list)
%     {
%         List<List<int>> packedList = Pack(list);  // Empaqueta duplicados consecutivos
%         return Transform(packedList);  // Transforma en parejas (N, X)
%     }

%     // % Transforma sublistas en parejas (N, X), donde N es la cantidad de elementos.
%     static List<Tuple<int, int>> Transform(List<List<int>> packedList)
%     {
%         List<Tuple<int, int>> result = new List<Tuple<int, int>>();

%         foreach (var sublist in packedList)
%         {
%             int count = sublist.Count;  // N: cantidad de elementos
%             int value = sublist[0];  // X: el valor de los elementos
%             result.Add(new Tuple<int, int>(count, value));
%         }

%         return result;
%     }

%     // Método `Pack` ya fue definido en el ejemplo anterior para agrupar duplicados consecutivos.
%     static List<List<int>> Pack(List<int> list)
%     {
%         if (list.Count == 0)
%         {
%             return new List<List<int>>();
%         }

%         List<int> sublist = new List<int>();
%         List<int> rest = new List<int>();
%         Transfer(list[0], list.Skip(1).ToList(), sublist, rest);

%         List<List<int>> result = Pack(rest);
%         result.Insert(0, sublist);
%         return result;
%     }

%     static void Transfer(int x, List<int> list, List<int> sublist, List<int> rest)
%     {
%         if (list.Count == 0 || list[0] != x)
%         {
%             sublist.Add(x);
%             rest.AddRange(list);
%             return;
%         }

%         sublist.Add(x);
%         Transfer(x, list.Skip(1).ToList(), sublist, rest);
%     }
% }
%=========PROLOG==========
% Codifica una lista usando codificación Run-Length.
% Primero agrupa los duplicados y luego transforma las sublistas en parejas (N, X).
encode(L, R) :- pack(L, P), transform(P, R).

% Transforma sublistas en parejas (N, X), donde N es la cantidad de elementos.
transform([], []).
transform([[X|Xs]|Ys], [[N,X]|Zs]) :- length([X|Xs], N), transform(Ys, Zs).
