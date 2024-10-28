% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Genera una permutación aleatoria de los elementos de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%======================C#===================
%using System;
%using System.Collections.Generic;
%class Program
%{
%    static Random random = new Random();
%    static void Main()
%    {
%        List<int> list = new List<int> { 1, 2, 3, 4, 5 };
%        List<int> permutation = RndPermu(list);    
%        Console.WriteLine("Permutación aleatoria: " + string.Join(", ", permutation));
%    }
%    static List<T> RndPermu<T>(List<T> list)
%    {
%        List<T> result = new List<T>(list);
%        int n = result.Count;
%        for (int i = n - 1; i > 0; i--)
%        {
%            int j = random.Next(0, i + 1);
%            // Intercambiar result[i] con el elemento aleatorio result[j]
%            T temp = result[i];
%            result[i] = result[j];
%            result[j] = temp;
%        }
%        return result;
%    }
%}
% Genera una permutación aleatoria de los elementos de una lista.
% Utiliza la selección aleatoria para construir la permutación.
rnd_permu(L, P) :- length(L, Len), rnd_select(L, Len, P).
