% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Extrae una porción de una lista, dado un rango.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
%         int i = 3;
%         int k = 6;
%         List<int> result = Slice(list, i, k);
%         Console.WriteLine(string.Join(", ", result));
%     }

%     // % Extrae una porción de una lista, dado un rango (I, K).
%     static List<int> Slice(List<int> list, int i, int k)
%     {
%         if (i == 1 && k == 1)
%         {
%             return new List<int> { list[0] };  // Devuelve el primer elemento si I y K son ambos 1
%         }

%         // % Caso recursivo: si I es 1, empieza a agregar los elementos a la nueva lista.
%         if (i == 1 && k > 1)
%         {
%             List<int> result = new List<int> { list[0] };
%             result.AddRange(Slice(list.GetRange(1, list.Count - 1), 1, k - 1));
%             return result;
%         }

%         // % Caso recursivo: sigue recorriendo la lista hasta llegar a I.
%         if (i > 1)
%         {
%             return Slice(list.GetRange(1, list.Count - 1), i - 1, k - 1);
%         }

%         return new List<int>();
%     }
% }

%=========PROLOG==========
% Extrae una porción de una lista, dado un rango.
% Los índices I y K deben ser mayores que 0.
slice([H|_], 1, 1, [H]).
slice([H|T], 1, K, [H|R]) :- K > 1, K1 is K - 1, slice(T, 1, K1, R).
slice([_|T], I, K, R) :- I > 1, I1 is I - 1, K1 is K - 1, slice(T, I1, K1, R).
