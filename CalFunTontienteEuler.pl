% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Calcula la función totiente de Euler, que cuenta cuántos números menores que M son coprimos con M.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

% using System;
% class Program
% {
%     static void Main()
%     {
%         int m = 10; // Ejemplo de número
%         int phi = Totient(m);
%         Console.WriteLine($"La función totiente de Euler φ({m}) es: {phi}");
%     }
% 
%     static int Totient(int m)
%     {
%         if (m == 1) return 1;
%         return TotientAcc(m, m, 0);
%     }
% 
%     static int TotientAcc(int m, int k, int acc)
%     {
%         if (k == 0) return acc;
%         if (Coprime(m, k))
%         {
%             return TotientAcc(m, k - 1, acc + 1);
%         }
%         return TotientAcc(m, k - 1, acc);
%     }
% 
%     static bool Coprime(int a, int b)
%     {
%         return GCD(a, b) == 1;
%     }
% 
%     static int GCD(int a, int b)
%     {
%         while (b != 0)
%         {
%             int temp = b;
%             b = a % b;
%             a = temp;
%         }
%         return a;
%     }
% }
% Calcula la función totiente de Euler, que cuenta cuántos números menores que M son coprimos con M.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient(1, 1).
totient(M, Phi) :- M > 1, totient_acc(M, M, 0, Phi).

totient_acc(_, 0, Acc, Acc).
totient_acc(M, K, Acc, Phi) :- K > 0, coprime(M, K), Acc1 is Acc + 1, K1 is K - 1, totient_acc(M, K1, Acc1, Phi).
totient_acc(M, K, Acc, Phi) :- K > 0, \\+ coprime(M, K), K1 is K - 1, totient_acc(M, K1, Acc, Phi).
