% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina 
%              el penúltimo elemento de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%using System;
%using System.Collections.Generic;
%public class Program
%{
%    public static void Main()
%    {
%        List<int> lista = new List<int> { 1, 2, 3, 4, 5 };
%        int? penultimo = Penultimate(lista);
%        
%        if (penultimo.HasValue)
%        {
%            Console.WriteLine($"El penúltimo elemento es: {penultimo.Value}");
%        }
%        else
%        {
%            Console.WriteLine("La lista debe tener al menos dos elementos.");
%        }
%    }
%
%    public static int? Penultimate(List<int> lista)
%    {
%        if (lista.Count < 2)
%        {
%            return null; // Devuelve null si la lista tiene menos de dos elementos
%        }
%
%        return lista[lista.Count - 2]; // Devuelve el penúltimo elemento
%    }
%}

% -------- Código en Prolog --------------------
% Encuentra el penúltimo elemento de una lista.
% La lista debe tener al menos dos elementos.
penultimate(X, [X, _]).
penultimate(X, [_|T]) :- penultimate(X, T).
