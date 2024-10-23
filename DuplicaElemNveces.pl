% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 21 de octubre de 2024
% Descripción: Duplicar los elementos de una lista un número dado de veces.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================




% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3 };
%         int n = 3;  // Número de repeticiones
%         List<int> duplicatedList = Dupli(list, n);
%         Console.WriteLine(string.Join(", ", duplicatedList));
%     }

%     // % Duplica los elementos de una lista un número dado de veces.
%     static List<int> Dupli(List<int> list, int n)
%     {
%         // % Caso base: la lista vacía se mantiene vacía.
%         if (list.Count == 0)
%         {
%             return new List<int>();
%         }

%         // % Caso recursivo: duplica el primer elemento N veces y continúa con el resto.
%         List<int> duplicatedElement = Duplicate(list[0], n);  // Duplica el primer elemento N veces
%         List<int> rest = Dupli(list.GetRange(1, list.Count - 1), n);  // Continua con el resto
%         duplicatedElement.AddRange(rest);  // Une las repeticiones con el resto de la lista
%         return duplicatedElement;
%     }

%     // % Crea una lista con N repeticiones del elemento X.
%     static List<int> Duplicate(int x, int n)
%     {
%         // % Caso base: si N es 0, devuelve una lista vacía.
%         if (n == 0)
%         {
%             return new List<int>();
%         }

%         // % Caso recursivo: agrega X a la lista y reduce N.
%         List<int> result = new List<int> { x };
%         result.AddRange(Duplicate(x, n - 1));  // Repite N veces
%         return result;
%     }
% }
%=======PROLOG==========
% Duplica los elementos de una lista un número dado de veces.
% Caso base: la lista vacía se mantiene vacía.
dupli([], _, []).
% Caso recursivo: duplica el primer elemento N veces y continúa con el resto.
dupli([H|T], N, R) :- duplicate(H, N, D), dupli(T, N, R1), append(D, R1, R).

% Crea una lista con N repeticiones del elemento X.
duplicate(_, 0, []).
duplicate(X, N, [X|R]) :- N > 0, N1 is N - 1, duplicate(X, N1, R).
