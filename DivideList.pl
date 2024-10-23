% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Divide una lista en dos partes.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%using System;
%using System.Collections.Generic;
%class Program
%{
%    static void Main()
%    {
%        List<int> lista = new List<int> { 1, 2, 3, 4, 5 };
%        int longitud = 3;
%        var resultado = Split(lista, longitud);
%        Console.WriteLine("Parte 1: " + string.Join(", ", resultado.Item1));
%        Console.WriteLine("Parte 2: " + string.Join(", ", resultado.Item2));
%    }
%    static (List<int> Part1, List<int> Part2) Split(List<int> lista, int n)
%    {
%        if (n == 0)
%        {
%            return (new List<int>(), lista);
%        }
%        List<int> part1 = new List<int>();
%        List<int> part2 = new List<int>(lista);
%        for (int i = 0; i < n && part2.Count > 0; i++)
%        {
%            part1.Add(part2[0]);
%            part2.RemoveAt(0);
%        }
%
%        return (part1, part2);
%    }
%}


% Divide una lista en dos partes.
% La longitud de la primera parte está dada por el segundo argumento.
split(L, 0, [], L).
split([H|T], N, [H|L1], L2) :- N > 0, N1 is N - 1, split(T, N1, L1, L2).
