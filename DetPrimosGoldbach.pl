% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
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
%         int n = 28; // Ejemplo de número par
%         var primes = Goldbach(n);
%         
%         if (primes != null)
%         {
%             Console.WriteLine($"Los números primos que suman {n} son: {primes[0]} y {primes[1]}");
%         }
%         else
%         {
%             Console.WriteLine("No se encontraron números primos que sumen al número dado.");
%         }
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



% Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
% https://es.wikipedia.org/wiki/Conjetura_de_Goldbach
goldbach(N, [P1, P2]) :- N > 2, N mod 2 =:= 0, prime_list(2, N, Primes), member(P1, Primes), P2 is N - P1, is_prime(P2).
