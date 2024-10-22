% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que muestra el 
% número de elementos de una lista.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================


%- - - - -  C# - - - - -
%using System;
%using System.Collections.Generic;
%using System.Linq;
%using System.Text;
%using System.Threading.Tasks;

%namespace _50_programas_en_prolog
%{
%    class Program
%    {
%        static void Main(string[] args)
%        {
%            // 4. Encontrar el numero de elemntos de una lista
%
%            List<int> list = new List<int> { 1, 2, 3, 4, 5 };
%            int length = ListLenght(list);
%            Console.WriteLine("Lista: 1, 2, 3, 4, 5");
%            Console.WriteLine("El numero de elementos en la lista es: \t" + length);
%            Console.ReadLine();
%        }
%        static int ListLenght<T>(List<T>list)
%        {
%            if(list==null ||list.Count==0)
%            {
%                return 0;
%            }
%            return ListLengthRecursive(list, 0);
%        }
%        static int ListLengthRecursive<T>(List<T>list, int count)
%        {
%            if(list.Count==0)
%            {
%                return count;
%            }
%            List<T> tail = list.GetRange(1, list.Count - 1);
%            return ListLengthRecursive(tail, count + 1);
%        }
%    
%        }
%    }
% Encuentra el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
element_at(X, [X|_], 1).
element_at(X, [_|T], K) :- K > 1, K1 is K - 1, element_at(X, T, K1).
