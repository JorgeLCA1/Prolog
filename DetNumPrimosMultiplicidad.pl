% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Determina los factores primos con su multiplicidad.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         int n = 315;
%         List<(int, int)> factors = PrimeFactorsMult(n);
%         foreach (var factor in factors)
%         {
%             Console.WriteLine($"Factor: {factor.Item1}, Multiplicity: {factor.Item2}");
%         }
%     }

%     // % Determina los factores primos con su multiplicidad.
%     static List<(int, int)> PrimeFactorsMult(int n)
%     {
%         List<int> factors = PrimeFactors(n);  // % Obtiene los factores primos.
%         return Encode(factors);  // % Codifica los factores primos con su multiplicidad.
%     }

%     // % Obtiene los factores primos de un número.
%     static List<int> PrimeFactors(int n)
%     {
%         List<int> factors = new List<int>();
%         for (int i = 2; i <= n; i++)
%         {
%             while (n % i == 0)
%             {
%                 factors.Add(i);
%                 n /= i;
%             }
%         }
%         return factors;
%     }

%     // % Codifica la lista de factores con su multiplicidad.
%     static List<(int, int)> Encode(List<int> list)
%     {
%         List<(int, int)> encoded = new List<(int, int)>();
%         for (int i = 0; i < list.Count; i++)
%         {
%             int count = 1;
%             while (i + 1 < list.Count && list[i] == list[i + 1])
%             {
%                 count++;
%                 i++;
%             }
%             encoded.Add((list[i], count));  // % Agrega el factor y su multiplicidad.
%         }
%         return encoded;
%     }
% }
%==========PROLOG============
% Determina los factores primos con su multiplicidad.
prime_factors_mult(N, L) :- prime_factors(N, F), encode(F, L).
