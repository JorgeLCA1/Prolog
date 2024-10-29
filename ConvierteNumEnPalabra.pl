% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Convierte un número en su representación en palabras en inglés.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;

% class Program
% {
%     static void Main()
%     {
%         int number = 12345;
%         string words = NumberToWords(number);
%         Console.WriteLine(words);  // % Imprime la representación en palabras del número.
%     }

%     // % Convierte un número a su representación en palabras.
%     static string NumberToWords(int number)
%     {
%         if (number == 0)
%             return "zero";

%         if (number < 0)
%             return "minus " + NumberToWords(Math.Abs(number));

%         return ConvertNumberToWords(number).Trim();
%     }

%     // % Función auxiliar para la conversión.
%     static string ConvertNumberToWords(int number)
%     {
%         if (number < 20)
%             return new[] {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", 
%                 "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"}[number];

%         if (number < 100)
%             return new[] {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"}[number / 10] 
%                    + (number % 10 > 0 ? " " + ConvertNumberToWords(number % 10) : "");

%         if (number < 1000)
%             return ConvertNumberToWords(number / 100) + " hundred" 
%                    + (number % 100 > 0 ? " and " + ConvertNumberToWords(number % 100) : "");

%         if (number < 1000000)
%             return ConvertNumberToWords(number / 1000) + " thousand" 
%                    + (number % 1000 > 0 ? " " + ConvertNumberToWords(number % 1000) : "");

%         if (number < 1000000000)
%             return ConvertNumberToWords(number / 1000000) + " million" 
%                    + (number % 1000000 > 0 ? " " + ConvertNumberToWords(number % 1000000) : "");

%         return ConvertNumberToWords(number / 1000000000) + " billion" 
%                + (number % 1000000000 > 0 ? " " + ConvertNumberToWords(number % 1000000000) : "");
%     }
% }
% Convierte un número en su representación en palabras en inglés.
number_words(Number, Words).
