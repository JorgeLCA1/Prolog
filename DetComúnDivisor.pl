% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que Determina el máximo común divisor de dos números positivos.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================



%using System;
%class Program
%{
%    static void Main()
%    {
%        int a = 48; // Cambia estos valores para probar otros números
%        int b = 18;
%        int resultado = GCD(a, b);
%        Console.WriteLine($"El MCD de {a} y {b} es: {resultado}");
%    }
%    static int GCD(int x, int y)
%    {
%        if (y == 0)
%            return x;
%        return GCD(y, x % y);
%    }
%}


% Calcula el máximo común divisor usando el algoritmo de Euclides.
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).
