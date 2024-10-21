%using System;
%using System.Collections.Generic;
%public class Program
%{
%    public static void Main()
%    {
%        List<int> lista = new List<int> { 10, 20, 30, 40, 50 };
%        int k = 3; // Cambia este valor para probar con diferentes índices
%        int? elemento = ElementAt(lista, k);
%        
%        if (elemento.HasValue)
%        {
%            Console.WriteLine($"El elemento en la posición {k} es: {elemento.Value}");
%        }
%        else
%        {
%            Console.WriteLine("El índice K debe ser mayor que 0 y menor o igual que la longitud de la lista.");
%        }
%    }
%    public static int? ElementAt(List<int> lista, int k)
%    {
%        if (k <= 0 || k > lista.Count)
%        {
%            return null; // Devuelve null si K es menor o igual a 0 o mayor que la longitud de la lista
%        }
%
%        return lista[k - 1]; // Devuelve el elemento en la posición K (ajustado para el índice 0)
%    }
%}
%
% Encuentra el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
element_at(X, [X|_], 1).
element_at(X, [_|T], K) :- K > 1, K1 is K - 1, element_at(X, T, K1).
