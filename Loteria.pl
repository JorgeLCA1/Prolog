% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 22 de octubre de 2024
% Descripción: Programa en Prolog que Extrae N números aleatorios de un rango dado.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

%using System;
%using System.Collections.Generic;
%using System.Linq;
%class Program
%{
%    static void Main()
%    {
%        int n = 5; // Número de elementos aleatorios a seleccionar
%        int m = 49; // Rango máximo
%        var numerosAleatorios = Lotto(n, m);
%        Console.WriteLine("Números aleatorios: " + string.Join(", ", numerosAleatorios));
%    }
%    static List<int> Lotto(int n, int m)
%    {
%        // Genera una lista de números en el rango [1, m]
%        var rango = Enumerable.Range(1, m).ToList();
%        
%        // Selecciona n números aleatorios de la lista
%        var random = new Random();
%        return rango.OrderBy(x => random.Next()).Take(n).ToList();
%    }
%}
%=========PROLOG=========
% Extrae N números aleatorios de un rango dado.
% Utiliza la función range para generar la lista de números y luego selecciona aleatoriamente.
lotto(N, M, L) :- range(1, M, R), rnd_select(R, N, L).
