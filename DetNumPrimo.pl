v% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Verifica si un número entero dado es primo.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================



%using System;
%class Program
%{
%    static void Main()
%    {
%        int numero = Console.ReadLine(); // Cambia este valor para probar otros números
%        if (IsPrime(numero))
%        {
%            Console.WriteLine($"{numero} es primo.");
%        }
%        else
%        {
%            Console.WriteLine($"{numero} no es primo.");
%        }
%    }
%    static bool IsPrime(int p)
%    {
%        if (p <= 1) return false;
%        if (p == 2 || p == 3) return true;
%        if (p % 2 == 0) return false;
%        return !HasFactor(p, 3);
%    }
%    static bool HasFactor(int n, int l)
%    {
%        if (n % l == 0) return true;
%        if (l * l > n) return false;
%        return HasFactor(n, l + 2);
%    }
%}
%==========PROLOG============
% Verifica si un número entero dado es primo.
is_prime(2).
is_prime(3).
is_prime(P) :- P > 3, P mod 2 =\= 0, \\+ has_factor(P, 3).

% Verifica si un número tiene factores.
has_factor(N, L) :- N mod L =:= 0.
has_factor(N, L) :- L * L < N, L2 is L + 2, has_factor(N, L2).
