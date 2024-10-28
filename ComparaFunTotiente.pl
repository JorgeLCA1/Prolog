% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Compara los dos métodos para calcular la función totiente.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;

% class Program
% {
%     static void Main()
%     {
%         int n = 60; // Ejemplo de número
%         CompareTotient(n);
%     }
% 
%     static void CompareTotient(int n)
%     {
%         int phi1 = Totient(n);
%         int phi2 = TotientImproved(n);
%         
%         Console.WriteLine($"Phi (método básico): {phi1}");
%         Console.WriteLine($"Phi (método mejorado): {phi2}");
%     }
% 
%     static int Totient(int n)
%     {
%         // Implementación del método básico (anteriormente definido)
%         if (n == 1) return 1;
%         return TotientAcc(n, 2, 0);
%     }
% 
%     static int TotientAcc(int n, int f, int acc)
%     {
%         if (n <= 1) return acc;
%         if (n % f == 0)
%         {
%             return TotientAcc(n / f, f, acc + 1);
%         }
%         else if (f * f < n)
%         {
%             int nextF = NextFactor(f);
%             return TotientAcc(n, nextF, acc);
%         }
%         return acc;
%     }
% 
%     static int NextFactor(int f)
%     {
%         return f > 2 ? f + 2 : 3; // Devuelve 3 si f es 2, o f + 2 si es mayor que 2
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
% Compara los dos métodos para calcular la función totiente.
compare_totient(N) :- totient(N, Phi1), totient_improved(N, Phi2), write('Phi (método básico): '), write(Phi1), nl, write('Phi (método mejorado): '), write(Phi2), nl.
