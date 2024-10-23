% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Inserta un elemento en una lista en una posición dada.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%using System;
using System.Collections.Generic;

%class Program
%{
%    static void Main()
%    {
%        var lista = new List<int> { 1, 2, 3, 4, 5 }; // Lista de ejemplo
%        int elemento = 99; // Elemento a insertar
%        int k = 3; // Índice en el que insertar (1 basado)
%
%        if (k < 1 || k > lista.Count + 1)
%        {
%            Console.WriteLine("Índice fuera de rango.");
%            return;
%        }
%        var resultado = InsertAt(lista, elemento, k);
%        Console.WriteLine("Lista después de insertar: " + string.Join(", ", resultado));
%    }
%    static List<int> InsertAt(List<int> lista, int elemento, int k)
%    {
%        var resultado = new List<int>(lista); // Copia la lista original
%        resultado.Insert(k - 1, elemento); // Inserta el elemento en la posición k-1 (ajustando a 0 basado)
%        return resultado;
%    }
%}
%===========PROLOG===========
% Inserta un elemento en una lista en la posición dada.
% El índice K debe ser mayor que 0.
insert_at(X, L, 1, [X|L]).
insert_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, insert_at(X, T, K1, R).
