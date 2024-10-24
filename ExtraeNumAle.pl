% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Extrae un número dado de elementos aleatorios de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% using System.Collections.Generic;

% class Program
% {
%     static Random random = new Random();

%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
%         int n = 3;
%         List<int> selected = RndSelect(list, n);
%         Console.WriteLine(string.Join(", ", selected));
%     }

%     // % Extrae un número dado de elementos aleatorios de una lista.
%     static List<int> RndSelect(List<int> list, int n)
%     {
%         if (n == 0)
%         {
%             return new List<int>();  // % Caso base: si N es 0, la lista resultado es vacía.
%         }

%         int len = list.Count;
%         int i = random.Next(0, len);  // % Genera un índice aleatorio entre 0 y len-1.
%         int x = list[i];  // % Selecciona el elemento en la posición I.
        
%         List<int> newList = new List<int>(list);
%         newList.RemoveAt(i);  // % Elimina el elemento seleccionado de la lista.

%         List<int> result = new List<int> { x };
%         result.AddRange(RndSelect(newList, n - 1));  // % Llama recursivamente para seleccionar el siguiente elemento.
%         return result;
%     }
% }
%===========PROLOG===========
% Extrae un número dado de elementos aleatorios de una lista.
% Utiliza un generador de números aleatorios y elimina los elementos seleccionados.
rnd_select(_, 0, []).
rnd_select(L, N, [X|R]) :- length(L, Len), random(1, Len, I), element_at(X, L, I), delete(L, X, L1), N1 is N - 1, rnd_select(L1, N1, R).
