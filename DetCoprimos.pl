% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Determinar si dos números positivos son coprimos.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% class Program
% {
%     static void Main()
%     {
%         int x = 14;
%         int y = 15;
%         bool result = Coprime(x, y);
%         Console.WriteLine($"Are {x} and {y} coprime? {result}");
%     }
%     // % Dos números son coprimos si su máximo común divisor es 1.
%     static bool Coprime(int x, int y)
%     {
%         return Gcd(x, y) == 1;  // Si el MCD es 1, entonces los números son coprimos
%     }
%     // % Calcula el máximo común divisor (gcd) usando el algoritmo de Euclides.
%     static int Gcd(int x, int y)
%     {
%         if (y == 0)
%         {
%             return x;
%         }
%         return Gcd(y, x % y);  // Algoritmo recursivo de Euclides
%     }
% }

%===========PROLOG===========
% Dos números son coprimos si su máximo común divisor es 1.
coprime(X, Y) :- gcd(X, Y, 1).
