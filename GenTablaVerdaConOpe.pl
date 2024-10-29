% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Utiliza operadores lógicos para definir expresiones y generar tablas de verdad.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% class Program
% {
%     static void Main()
%     {
%         bool A = true;
%         bool B = false;
%         Console.WriteLine($"AND: {And(A, B)}");
%         Console.WriteLine($"OR: {Or(A, B)}");
%         Console.WriteLine($"NAND: {Nand(A, B)}");
%         Console.WriteLine($"NOR: {Nor(A, B)}");
%         Console.WriteLine($"XOR: {Xor(A, B)}");
%         Console.WriteLine($"IMPLICATION: {Impl(A, B)}");
%         Console.WriteLine($"EQUIVALENCE: {Equ(A, B)}");
%     }

%     // % Operador AND
%     static bool And(bool a, bool b)
%     {
%         return a && b;
%     }

%     // % Operador OR
%     static bool Or(bool a, bool b)
%     {
%         return a || b;
%     }

%     // % Operador NAND
%     static bool Nand(bool a, bool b)
%     {
%         return !(a && b);
%     }

%     // % Operador NOR
%     static bool Nor(bool a, bool b)
%     {
%         return !(a || b);
%     }

%     // % Operador XOR
%     static bool Xor(bool a, bool b)
%     {
%         return a ^ b;
%     }

%     // % Operador IMPLICACIÓN
%     static bool Impl(bool a, bool b)
%     {
%         return !a || b;
%     }

%     // % Operador EQUIVALENCIA
%     static bool Equ(bool a, bool b)
%     {
%         return a == b;
%     }
% }
% Utiliza operadores lógicos para definir expresiones y generar tablas de verdad.
% Definición de los operadores básicos AND, OR, NAND, NOR, XOR, IMPLICACIÓN, EQUIVALENCIA.
and(A, B) :- A, B.
or(A, _) :- A.
or(_, B) :- B.
nand(A, B) :- \+ (A, B).
nor(A, B) :- \+ (A; B).
xor(A, B) :- A, \+ B; \+ A, B.
impl(A, B) :- \+ A; B.
equ(A, B) :- A, B; \+ A, \+ B.
