% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Collections.Generic;

% class Program
% {
%     static void Main()
%     {
%         int low = 4;  // Límite inferior
%         int high = 20; // Límite superior
%         var goldbachPairs = GoldbachList(low, high);
%         
%         foreach (var pair in goldbachPairs)
%         {
%             Console.WriteLine($"Goldbach({pair[0]}) = {pair[1]} + {pair[2]}");
%         }
%     }
% 
%     static List<List<int>> GoldbachList(int low, int high)
%     {
%         var results = new List<List<int>>();
%         
%         for (int n = low; n <= high; n++)
%         {
%             if (n % 2 == 0) // Solo números pares
%             {
%                 var primes = Goldbach(n);
%                 if (primes != null)
%                 {
%                     results.Add(new List<int> { n, primes[0], primes[1] });
%                 }
%             }
%         }
%         
%         return results;
%     }
% 
%     static List<int> Goldbach(int n)
%     {
%         if (n <= 2 || n % 2 != 0) return null; // Debe ser un número par mayor que 2
%         
%         var primes = PrimeList(2, n);
%         
%         foreach (var p1 in primes)
%         {
%             int p2 = n - p1;
%             if (IsPrime(p2))
%             {
%                 return new List<int> { p1, p2 }; // Retorna los dos primos
%             }
%         }
%         return null; // Si no se encontró ningún par
%     }
% 
%     static List<int> PrimeList(int start, int end)
%     {
%         return Enumerable.Range(start, end - start + 1).Where(IsPrime).ToList();
%     }
% 
%     static bool IsPrime(int num)
%     {
%         if (num <= 1) return false;
%         if (num == 2) return true;
%         if (num % 2 == 0) return false;
%         
%         for (int i = 3; i * i <= num; i += 2)
%         {
%             if (num % i == 0) return false;
%         }
%         return true;
%     }
% }
% Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
goldbach_list(Low, High, L) :- findall([N, P1, P2], (between(Low, High, N), N mod 2 =:= 0, goldbach(N, [P1, P2])), L).
