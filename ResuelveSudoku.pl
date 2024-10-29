% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 288 de octubre de 2024
% Descripción: Programa en Prolog que Resuelve un puzzle de Sudoku.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Linq;

% class Program
% {
%     static void Main()
%     {
%         int[,] puzzle = {
%             {5, 3, 0, 0, 7, 0, 0, 0, 0},
%             {6, 0, 0, 1, 9, 5, 0, 0, 0},
%             {0, 9, 8, 0, 0, 0, 0, 6, 0},
%             {8, 0, 0, 0, 6, 0, 0, 0, 3},
%             {4, 0, 0, 8, 0, 3, 0, 0, 1},
%             {7, 0, 0, 0, 2, 0, 0, 0, 6},
%             {0, 6, 0, 0, 0, 0, 2, 8, 0},
%             {0, 0, 0, 4, 1, 9, 0, 0, 5},
%             {0, 0, 0, 0, 8, 0, 0, 7, 9}
%         };

%         if (SolveSudoku(puzzle))
%         {
%             PrintSudoku(puzzle);
%         }
%         else
%         {
%             Console.WriteLine("No solution exists");
%         }
%     }

%     // % Función que resuelve el Sudoku utilizando backtracking.
%     static bool SolveSudoku(int[,] puzzle)
%     {
%         for (int row = 0; row < 9; row++)
%         {
%             for (int col = 0; col < 9; col++)
%             {
%                 if (puzzle[row, col] == 0)  // % Espacio vacío encontrado.
%                 {
%                     for (int num = 1; num <= 9; num++)
%                     {
%                         if (IsSafe(puzzle, row, col, num))
%                         {
%                             puzzle[row, col] = num;

%                             if (SolveSudoku(puzzle))  // % Recursión para resolver el resto.
%                                 return true;

%                             puzzle[row, col] = 0;  // % Backtracking si el número no funcionó.
%                         }
%                     }
%                     return false;
%                 }
%             }
%         }
%         return true;  // % Sudoku resuelto.
%     }

%     // % Verifica si es seguro colocar un número en una celda específica.
%     static bool IsSafe(int[,] puzzle, int row, int col, int num)
%     {
%         // % Verifica la fila y la columna.
%         for (int x = 0; x < 9; x++)
%         {
%             if (puzzle[row, x] == num || puzzle[x, col] == num)
%                 return false;
%         }

%         // % Verifica el subcuadro 3x3.
%         int startRow = row - row % 3, startCol = col - col % 3;
%         for (int i = 0; i < 3; i++)
%         {
%             for (int j = 0; j < 3; j++)
%             {
%                 if (puzzle[i + startRow, j + startCol] == num)
%                     return false;
%             }
%         }
%         return true;
%     }

%     // % Imprime la solución del Sudoku.
%     static void PrintSudoku(int[,] puzzle)
%     {
%         for (int row = 0; row < 9; row++)
%         {
%             for (int col = 0; col < 9; col++)
%             {
%                 Console.Write(puzzle[row, col] + " ");
%             }
%             Console.WriteLine();
%         }
%     }
% }
% Resuelve un puzzle de Sudoku.
sudoku(Puzzle, Solution).
