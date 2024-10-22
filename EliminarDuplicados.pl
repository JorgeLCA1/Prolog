% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que elimina 
% elementos duplicados consecutivos de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

%using System;
%using System.Collections.Generic;
%class Program
%{
%    static void Main()
%    {
%        var listaOriginal = new List<int> { 1, 1, 2, 3, 3, 3, 4, 4, 5 };
%        var listaSinDuplicados = EliminarDuplicados(listaOriginal);        
%        Console.WriteLine(string.Join(", ", listaSinDuplicados));
%    }
%    static List<int> EliminarDuplicados(List<int> lista)
%    {
%        var resultado = new List<int>();
%        
%        for (int i = 0; i < lista.Count; i++)
%        {
%            if (i == 0 || lista[i] != lista[i - 1])
%            {
%                resultado.Add(lista[i]);
%            }
%        }
%        
%        return resultado;
%    }
%}

% Elimina duplicados consecutivos de una lista.
% Caso base: una lista vacía se mantiene vacía.
compress([], []).
% Si queda un solo elemento, no hay duplicados.
compress([X], [X]).
% Caso recursivo: si el primer y segundo elemento son iguales, ignora el primero.
compress([X,X|T], R) :- compress([X|T], R).
% Si el primer y segundo elemento son distintos, conserva el primero.
compress([X,Y|T], [X|R]) :- X \= Y, compress([Y|T], R).
