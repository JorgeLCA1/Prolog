% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que Elimina el k-ésimo elemento de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

%using System;
%using System.Collections.Generic;
%class Program
%{
%    static void Main()
%    {
%        var lista = new List<int> { 1, 2, 3, 4, 5 }; // Lista de ejemplo
%        int k = 3; // Índice del elemento a eliminar (1 basado)
%        if (k < 1 || k > lista.Count)
%        {
%            Console.WriteLine("Índice fuera de rango.");
%            return;
%        }
%        var resultado = RemoveAt(lista, k);
%        Console.WriteLine("Lista después de eliminar el k-ésimo elemento: " + string.Join(", ", resultado));
%    }
%    static List<int> RemoveAt(List<int> lista, int k)
%    {
%        var resultado = new List<int>();
%        for (int i = 0; i < lista.Count; i++)
%        {
%            if (i + 1 != k) // +1 para ajustar el índice a 1 basado
%            {
%                resultado.Add(lista[i]);
%            }
%        }
%        return resultado;
%    }
%}
%=========PROLOG==========
% Elimina el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
remove_at(X, [X|T], 1, T).
remove_at(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, remove_at(X, T, K1, R).
