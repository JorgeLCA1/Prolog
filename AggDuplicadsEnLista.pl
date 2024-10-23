% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 23 de octubre de 2024
% Descripción: Programa en Prolog que agrupa duplicados consecutivos de los elementos de una lista en sublistas.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
%======================C#===================
%using System;
%using System.Collections.Generic;
%class Program
%{
%    static void Main()
%    {
%        int inicio = 1; // Inicio del rango
%        int fin = 5; // Fin del rango
%        var lista = Range(inicio, fin);
%        Console.WriteLine("Lista de enteros en el rango: " + string.Join(", ", lista));
%    }
%    static List<int> Range(int inicio, int fin)
%    {
%        var resultado = new List<int>();
%        for (int i = inicio; i <= fin; i++)
%        {
%            resultado.Add(i);        }
%        return resultado;
%    }
%}

%===============PROLOG=================
% Crea una lista con todos los enteros dentro de un rango dado.
% Caso base: cuando el inicio y el final son iguales.
range(I, I, [I]).
% Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).
