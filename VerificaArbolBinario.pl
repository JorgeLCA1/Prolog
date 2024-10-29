% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Verifica si un término dado representa un árbol binario.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;

% class Program
% {
%     static void Main()
%     {
%         var tree = new Tree('a', new Tree('b', null, null), new Tree('c', null, null));
%         Console.WriteLine(IsTree(tree));  // % Devuelve true si es un árbol binario, de lo contrario, false.
%     }

%     // % Clase para representar un árbol binario.
%     public class Tree
%     {
%         public char? Value { get; }
%         public Tree Left { get; }
%         public Tree Right { get; }

%         public Tree(char? value, Tree left, Tree right)
%         {
%             Value = value;
%             Left = left;
%             Right = right;
%         }
%     }

%     // % Verifica si un árbol binario es válido.
%     static bool IsTree(Tree node)
%     {
%         if (node == null)
%         {
%             return true;  // % Caso base: un árbol vacío (null) es un árbol binario.
%         }

%         // % Caso recursivo: verifica que ambos subárboles sean árboles binarios.
%         return IsTree(node.Left) && IsTree(node.Right);
%     }
% }
% Verifica si un término dado representa un árbol binario.
% Un árbol binario está compuesto por un nodo raíz y dos subárboles.
istree(nil).
istree(t(_, L, R)) :- istree(L), istree(R).
