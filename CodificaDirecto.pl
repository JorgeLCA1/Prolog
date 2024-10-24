% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Codifica directamente una lista usando codificación Run-Length.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         List<char> list = new List<char> { 'a', 'a', 'a', 'b', 'b', 'c' };
%         List<Tuple<int, char>> encodedList = EncodeDirect(list);
%         foreach (var item in encodedList)
%         {
%             Console.WriteLine($"({item.Item1}, {item.Item2})");
%         }
%     }

%     // % Codifica directamente una lista usando codificación Run-Length.
%     static List<Tuple<int, char>> EncodeDirect(List<char> list)
%     {
%         // % Caso base: lista vacía.
%         if (list.Count == 0)
%         {
%             return new List<Tuple<int, char>>();
%         }

%         // % Caso recursivo: cuenta cuántos elementos consecutivos son iguales.
%         char first = list[0];
%         int count = Count(first, list, out List<char> rest);  // Cuenta los elementos iguales
%         List<Tuple<int, char>> result = new List<Tuple<int, char>> { Tuple.Create(count, first) };
%         result.AddRange(EncodeDirect(rest));  // Continua codificando el resto de la lista
%         return result;
%     }

%     // % Cuenta cuántos elementos consecutivos son iguales.
%     static int Count(char x, List<char> list, out List<char> rest)
%     {
%         // % Caso base: si la lista está vacía.
%         if (list.Count == 0)
%         {
%             rest = new List<char>();
%             return 0;
%         }

%         // % Si el primer elemento es igual a X, incrementa el conteo.
%         if (list[0] == x)
%         {
%             int count = Count(x, list.GetRange(1, list.Count - 1), out rest);  // Recurre sobre el resto de la lista
%             return count + 1;
%         }

%         // % Si el primer elemento es diferente a X, termina el conteo.
%         rest = list;
%         return 0;
%     }
% }
%=======================PROLOG==================
% Codifica directamente una lista usando codificación Run-Length.
% Cuenta cuántos elementos consecutivos son iguales.
encode_direct([], []).
encode_direct([X|Xs], [[N,X]|R]) :- count(X, [X|Xs], N, Rest), encode_direct(Rest, R).

% Cuenta cuántos elementos consecutivos son iguales.
count(_, [], 0, []).
count(X, [X|Xs], N, Rest) :- count(X, Xs, N1, Rest), N is N1 + 1.
count(X, [Y|Ys], 0, [Y|Ys]) :- X \= Y.
