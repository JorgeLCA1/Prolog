% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que agrupa duplicados consecutivos de los elementos de una lista en sublistas.
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
%         List<List<int>> packedList = Pack(list);
%         foreach (var sublist in packedList)
%         {
%             Console.WriteLine(string.Join(", ", sublist));
%         }
%     }

%     // % Agrupa duplicados consecutivos de una lista en sublistas.
%     static List<List<int>> Pack(List<int> list)
%     {
%         // % Caso base: una lista vacía se agrupa como una lista vacía.
%         if (list.Count == 0)
%         {
%             return new List<List<int>>();
%         }

%         // % Caso recursivo: transfiere todos los elementos consecutivos iguales a una sublista.
%         List<int> sublist = new List<int>();
%         List<int> rest = new List<int>();
%         Transfer(list[0], list.Skip(1).ToList(), sublist, rest);

%         List<List<int>> result = Pack(rest);
%         result.Insert(0, sublist);
%         return result;
%     }

%     // % Transfiere los elementos duplicados consecutivos a una sublista.
%     static void Transfer(int x, List<int> list, List<int> sublist, List<int> rest)
%     {
%         // % Si el siguiente elemento es diferente, termina la transferencia.
%         if (list.Count == 0 || list[0] != x)
%         {
%             sublist.Add(x);
%             rest.AddRange(list);
%             return;
%         }

%         // % Si el siguiente elemento es igual, agrégalo a la sublista.
%         sublist.Add(x);
%         Transfer(x, list.Skip(1).ToList(), sublist, rest);
%     }
% }
%=======PROLOG======
% Agrupa duplicados consecutivos de una lista en sublistas.
% Caso base: una lista vacía se agrupa como una lista vacía.
pack([], []).
% Caso recursivo: transfiere todos los elementos consecutivos iguales a una sublista.
pack([X|Xs], [[X|Ys]|Zs]) :- transfer(X, Xs, Ys, Rest), pack(Rest, Zs).

% Transfiere los elementos duplicados consecutivos a una sublista.
transfer(X, [], [], []).
% Si el siguiente elemento es diferente, termina la transferencia.
transfer(X, [Y|Ys], [], [Y|Ys]) :- X \= Y.
% Si el siguiente elemento es igual, agrégalo a la sublista.
transfer(X, [X|Xs], [X|Ys], Rest) :- transfer(X, Xs, Ys, Rest).

