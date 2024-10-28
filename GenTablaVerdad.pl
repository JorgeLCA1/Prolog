% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que Genera una tabla de verdad para una expresión lógica en dos variables.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;

% class Program
% {
%     static void Main()
%     {
%         Console.WriteLine("A B Expr");
%         Table(true, true, (A, B) => A && B);
%         Table(true, false, (A, B) => A && B);
%         Table(false, true, (A, B) => A && B);
%         Table(false, false, (A, B) => A && B);
%     }
% 
%     static void Table(bool A, bool B, Func<bool, bool, bool> expr)
%     {
%         Console.WriteLine($"{A} {B} {expr(A, B)}");
%     }
% }
% Genera una tabla de verdad para una expresión lógica en dos variables.
% A y B son las variables lógicas y Expr es la expresión lógica que se evalúa.
table(A, B, Expr) :- write(A), write(' '), write(B), write(' '), call(Expr), nl, fail.
table(_, _, _).
