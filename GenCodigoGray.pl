% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Genera el código Gray de N bits.
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
%         int n = 3;  // % Número de bits
%         List<string> grayCode = Gray(n);
%         Console.WriteLine(string.Join(", ", grayCode));
%     }

%     // % Genera el código Gray de N bits.
%     static List<string> Gray(int n)
%     {
%         if (n == 1)
%         {
%             return new List<string> { "0", "1" };  // % Caso base: código Gray de 1 bit.
%         }

%         List<string> previousGray = Gray(n - 1);  // % Llama recursivamente para generar el código Gray de N-1 bits.
%         
%         List<string> withZero = previousGray.Select(code => "0" + code).ToList();  // % Agrega '0' al inicio de cada código.
%         List<string> withOne = previousGray.AsEnumerable().Reverse().Select(code => "1" + code).ToList();  // % Agrega '1' al inicio, invirtiendo la lista.

%         withZero.AddRange(withOne);  // % Concatena ambas listas para obtener el código Gray de N bits.
%         return withZero;
%     }
% }
% Genera el código Gray de N bits.
% https://es.wikipedia.org/wiki/Código_Gray
% La secuencia de código Gray es una secuencia binaria en la que dos valores consecutivos difieren en solo un bit.
gray(1, ['0', '1']).
gray(N, C) :- N > 1, N1 is N - 1, gray(N1, C1), maplist(atom_concat('0'), C1, C0), reverse(C1, C1R), maplist(atom_concat('1'), C1R, C1G), append(C0, C1G, C).
