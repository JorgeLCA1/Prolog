% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Encuentra los factores primos de un número entero positivo.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================


% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         int n = 60; // Ejemplo de número
%         var factors = PrimeFactors(n);
%         
%         Console.WriteLine($"Los factores primos de {n} son: " + string.Join(", ", factors));
%     }
% 
%     static List<int> PrimeFactors(int n)
%     {
%         List<int> factors = new List<int>();
%         PrimeFactors(n, 2, factors);
%         return factors;
%     }
% 
%     static void PrimeFactors(int n, int f, List<int> factors)
%     {
%         if (n <= 1) return; // Caso base
%         if (n % f == 0)
%         {
%             factors.Add(f);
%             PrimeFactors(n / f, f, factors); // Dividir y continuar
%         }
%         else if (f * f < n)
%         {
%             int nextF = NextFactor(f);
%             PrimeFactors(n, nextF, factors);
%         }
%     }
% 
%     static int NextFactor(int f)
%     {
%         return f > 2 ? f + 2 : 3; // Devuelve 3 si f es 2, o f + 2 si es mayor que 2
%     }
% }

% Encuentra los factores primos de un número entero positivo.
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).
prime_factors(N, F, L) :- N > 1, F * F < N, next_factor(F, F1), prime_factors(N, F1, L).

next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.
