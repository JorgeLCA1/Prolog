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
%         Console.WriteLine("A B AND OR NAND NOR XOR IMPL EQUIV");
%         TruthTable();
%     }
% 
%     static void TruthTable()
%     {
%         bool[] values = { true, false };
%         
%         foreach (bool A in values)
%         {
%             foreach (bool B in values)
%             {
%                 Console.WriteLine($"{A} {B} {And(A, B)} {Or(A, B)} {Nand(A, B)} {Nor(A, B)} {Xor(A, B)} {Impl(A, B)} {Equiv(A, B)}");
%             }
%         }
%     }
% 
%     static bool And(bool A, bool B) => A && B;
%     static bool Or(bool A, bool B) => A || B;
%     static bool Nand(bool A, bool B) => !(A && B);
%     static bool Nor(bool A, bool B) => !(A || B);
%     static bool Xor(bool A, bool B) => A ^ B; // Exclusivo
%     static bool Impl(bool A, bool B) => !A || B; // Implicación
%     static bool Equiv(bool A, bool B) => A == B; // Equivalencia
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
