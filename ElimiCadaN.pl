% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Elimina cada n-ésimo elemento de una lista.
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
%         int n = 3;
%         List<int> result = Drop(list, n);
%         Console.WriteLine(string.Join(", ", result));
%     }

%     // % Elimina cada n-ésimo elemento de una lista.
%     static List<int> Drop(List<int> list, int n)
%     {
%         return Drop(list, n, n);  // Inicia con el contador en N
%     }

%     // % Caso base: cuando la lista está vacía, el resultado es vacío.
%     static List<int> Drop(List<int> list, int k, int n)
%     {
%         if (list.Count == 0)
%         {
%             return new List<int>();  // Lista vacía
%         }

%         // % Si el contador llega a 1, omite el primer elemento y reinicia el contador.
%         if (k == 1)
%         {
%             return Drop(list.GetRange(1, list.Count - 1), n, n);  // Reinicia el contador
%         }

%         // % Caso recursivo: disminuye el contador y conserva el elemento.
%         List<int> result = new List<int> { list[0] };
%         result.AddRange(Drop(list.GetRange(1, list.Count - 1), k - 1, n));  // Disminuye el contador
%         return result;
%     }
% }
%============PROLOG==============
% Elimina cada n-ésimo elemento de una lista.
% Utiliza un contador para determinar cuándo eliminar un elemento.
drop(L, N, R) :- drop(L, N, N, R).

% Caso base: cuando la lista está vacía, el resultado es vacío.
drop([], _, _, []).
% Si el contador llega a 1, omite el primer elemento y reinicia el contador.
drop([_|T], 1, N, R) :- drop(T, N, N, R).
% Caso recursivo: disminuye el contador y conserva el elemento.
drop([H|T], K, N, [H|R]) :- K > 1, K1 is K - 1, drop(T, K1, N, R).
