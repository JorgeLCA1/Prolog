% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Rota una lista N lugares a la izquierda.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<int> list = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8 };
%         int n = 3;
%         List<int> rotatedList = Rotate(list, n);
%         Console.WriteLine(string.Join(", ", rotatedList));
%     }

%     // % Rota una lista N lugares a la izquierda.
%     static List<int> Rotate(List<int> list, int n)
%     {
%         int len = list.Count;  // % Obtiene la longitud de la lista.
%         int n1 = n % len;  // % Calcula la rotación efectiva con base en la longitud.
%         
%         // % Divide la lista en dos partes: desde el inicio hasta N1 y el resto.
%         List<int> l1 = list.GetRange(0, n1);  // Primera parte
%         List<int> l2 = list.GetRange(n1, len - n1);  // Segunda parte
%         
%         // % Concatena la segunda parte (L2) al inicio y la primera parte (L1) al final.
%         List<int> result = new List<int>(l2);
%         result.AddRange(l1);
%         
%         return result;
%     }
% }
%=========PROLOG=============
% Rota una lista N lugares a la izquierda.
% Utiliza la longitud de la lista para manejar rotaciones mayores que la longitud.
rotate(L, N, R) :- length(L, Len), N1 is N mod Len, split(L, N1, L1, L2), append(L2, L1, R).
