% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Calcula la función totiente usando los factores primos con multiplicidad para mejorar la eficiencia.
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
%         int n = 60; // Ejemplo de número
%         int phi = TotientImproved(n);
%         Console.WriteLine($"La función totiente de Euler φ({n}) es: {phi}");
%     }
% 
%     static int TotientImproved(int n)
%     {
%         var primeFactors = PrimeFactorsMult(n);
%         return TotientPhi(primeFactors);
%     }
% 
%     static List<KeyValuePair<int, int>> PrimeFactorsMult(int n)
%     {
%         var factors = new List<KeyValuePair<int, int>>();
%         for (int f = 2; f * f <= n; f++)
%         {
%             int count = 0;
%             while (n % f == 0)
%             {
%                 n /= f;
%                 count++;
%             }
%             if (count > 0)
%             {
%                 factors.Add(new KeyValuePair<int, int>(f, count));
%             }
%         }
%         if (n > 1) // Si n es un número primo mayor que 2
%         {
%             factors.Add(new KeyValuePair<int, int>(n, 1));
%         }
%         return factors;
%     }
% 
%     static int TotientPhi(List<KeyValuePair<int, int>> factors)
%     {
%         int phi = 1;
%         foreach (var factor in factors)
%         {
%             int p = factor.Key;
%             int m = factor.Value;
%             phi *= (p - 1) * (int)Math.Pow(p, m - 1);
%         }
%         return phi;
%     }
% }
% Calcula la función totiente usando los factores primos con multiplicidad para mejorar la eficiencia.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient_improved(N, Phi) :- prime_factors_mult(N, F), totient_phi(F, Phi).

totient_phi([], 1).
totient_phi([[P, M]|T], Phi) :- totient_phi(T, Phi1), Phi is Phi1 * (P - 1) * P ** (M - 1).
