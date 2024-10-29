% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Comprueba si una cadena es un identificador válido según una gramática dada.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Text.RegularExpressions;

% class Program
% {
%     static void Main()
%     {
%         string input = "myIdentifier_123";
%         bool isValid = IsValidIdentifier(input);
%         Console.WriteLine(isValid ? "Es un identificador válido" : "No es un identificador válido");
%     }

%     // % Verifica si la cadena cumple con las reglas de un identificador.
%     static bool IsValidIdentifier(string identifier)
%     {
%         // % Definimos la gramática de un identificador:
%         // % - Comienza con una letra o un guion bajo.
%         // % - Puede contener letras, dígitos o guiones bajos.
%         string pattern = @"^[a-zA-Z_][a-zA-Z0-9_]*$";
%         return Regex.IsMatch(identifier, pattern);
%     }
% }
% Comprueba si una cadena es un identificador válido según una gramática dada.
identifier(String).
