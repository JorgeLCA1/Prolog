% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Crea una lista con todos los enteros dentro de un rango dado.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% using System.Collections.Generic;
% class Program
% {
%     static void Main()
%     {
%         int start = 1;
%         int end = 5;
%         List<int> rangeList = Range(start, end);
%         Console.WriteLine(string.Join(", ", rangeList));
%     }

%     // % Crea una lista con todos los enteros dentro de un rango dado.
%     static List<int> Range(int start, int end)
%     {
%         // % Caso base: cuando el inicio y el final son iguales.
%         if (start == end)
%         {
%             return new List<int> { start };
%         }
%         // % Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
%         List<int> result = new List<int> { start };
%         result.AddRange(Range(start + 1, end));  // Continua con el siguiente número en el rango
%         return result;
%     }
% }
%===========PROLOG============
% Crea una lista con todos los enteros dentro de un rango dado.
% Caso base: cuando el inicio y el final son iguales.
range(I, I, [I]).
% Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).
