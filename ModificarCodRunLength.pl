% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Modificar la codificación Run-Length de una lista.
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
%         List<int> list = new List<int> { 1, 1, 2, 3, 3, 4, 4, 4 };
%         List<object> modifiedEncoding = EncodeModified(list);
%         foreach (var item in modifiedEncoding)
%         {
%             if (item is Tuple<int, int>)
%             {
%                 var pair = (Tuple<int, int>)item;
%                 Console.WriteLine($"({pair.Item1}, {pair.Item2})");
%             }
%             else
%             {
%                 Console.WriteLine(item);
%             }
%         }
%     }

%     // % Modifica la codificación Run-Length de una lista.
%     // % Si un elemento no tiene duplicados, se mantiene sin empaquetar.
%     static List<object> EncodeModified(List<int> list)
%     {
%         List<Tuple<int, int>> encodedList = Encode(list);  // Llama a la codificación Run-Length
%         return Modify(encodedList);  // Modifica la codificación según los criterios
%     }

%     // % Caso base: lista vacía.
%     static List<object> Modify(List<Tuple<int, int>> encodedList)
%     {
%         List<object> result = new List<object>();

%         foreach (var pair in encodedList)
%         {
%             int count = pair.Item1;
%             int value = pair.Item2;

%             // % Si hay solo un elemento, agrégalo directamente.
%             if (count == 1)
%             {
%                 result.Add(value);
%             }
%             // % Si hay más de un elemento, mantén el formato (N, X).
%             else
%             {
%                 result.Add(new Tuple<int, int>(count, value));
%             }
%         }

%         return result;
%     }

%     // Método `Encode` ya fue definido en el ejemplo anterior para la codificación Run-Length.
%     static List<Tuple<int, int>> Encode(List<int> list)
%     {
%         List<List<int>> packedList = Pack(list);  // Empaqueta duplicados consecutivos
%         return Transform(packedList);  // Transforma en parejas (N, X)
%     }

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

% Modifica la codificación Run-Length de una lista.
% Si un elemento no tiene duplicados, se mantiene sin empaquetar.
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

% Caso base: lista vacía.
modify([], []).
% Si hay solo un elemento, agrégalo directamente.
modify([[1,X]|T], [X|R]) :- modify(T, R).
% Si hay más de un elemento, mantén el formato (N, X).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).
