% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que aplana una 
% estructura de lista anidada.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================

%using System;
%using System.Collections.Generic;
%class Program
%{
%    static void Main()
%    {
%        var listaAnidada = new List<object>
%        {
%            1,
%            new List<object> { 2, 3 },
%            new List<object> { new List<object> { 4, 5 }, 6 },
%            7
%        };
%        
%        var listaAplanada = Aplanar(listaAnidada);
%        
%        Console.WriteLine(string.Join(", ", listaAplanada));
%    }
%    static List<object> Aplanar(List<object> lista)
%    {
%        var resultado = new List<object>();
%        
%        foreach (var elemento in lista)
%        {
%            if (elemento is List<object> sublista)
%            {
%                resultado.AddRange(Aplanar(sublista));
%            }
%            else
%            {
%                resultado.Add(elemento);
%            }
%        }
%        
%        return resultado;
%    }
%}
%======PROLOG=======
% Aplana una lista anidada en una lista simple.
% Caso base: la lista vacía se aplana a una lista vacía.
my_flatten([], []).
% Caso recursivo: si la cabeza es una lista, aplana la cabeza y la cola recursivamente.
my_flatten([H|T], Flat) :- my_flatten(H, FH), my_flatten(T, FT), append(FH, FT, Flat).
% Si la cabeza no es una lista, simplemente agrégala al resultado.
my_flatten(X, [X]) :- X \= [], \+ is_list(X).
