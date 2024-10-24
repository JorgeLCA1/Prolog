% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Decodifica una lista codificada mediante Run-Length.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================


% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<Tuple<int, char>> encodedList = new List<Tuple<int, char>>
%         {
%             new Tuple<int, char>(4, 'a'),
%             new Tuple<int, char>(2, 'b'),
%             new Tuple<int, char>(3, 'c')
%         };

%         List<char> decodedList = Decode(encodedList);
%         Console.WriteLine(string.Join(", ", decodedList));
%     }

%     // % Decodifica una lista codificada mediante Run-Length.
%     static List<char> Decode(List<Tuple<int, char>> encodedList)
%     {
%         // % Caso base: lista vacía.
%         if (encodedList.Count == 0)
%         {
%             return new List<char>();
%         }

%         // % Caso recursivo: expande cada par (N, X) en una lista con N elementos X.
%         Tuple<int, char> first = encodedList[0];
%         List<char> expanded = Expand(first.Item2, first.Item1);  // Expande el par (N, X)
%         List<char> restDecoded = Decode(encodedList.GetRange(1, encodedList.Count - 1));  // Decodifica el resto
%         expanded.AddRange(restDecoded);  // Une la expansión con el resto
%         return expanded;
%     }

%     // % Expande un elemento X en una lista de longitud N.
%     static List<char> Expand(char x, int n)
%     {
%         // % Caso base: si N es 0, devuelve una lista vacía.
%         if (n == 0)
%         {
%             return new List<char>();
%         }

%         // % Caso recursivo: agrega X a la lista y reduce N.
%         List<char> result = new List<char> { x };
%         result.AddRange(Expand(x, n - 1));  // Continua expandiendo hasta que N llegue a 0
%         return result;
%     }
% }

% Decodifica una lista codificada mediante Run-Length.
% Expande cada par (N, X) en una lista con N elementos X.
decode([], []).
decode([[N,X]|T], R) :- decode(T, R1), expand(X, N, E), append(E, R1, R).

% Expande un elemento X en una lista de longitud N.
expand(_, 0, []).
expand(X, N, [X|T]) :- N > 0, N1 is N - 1, expand(X, N1, T).
