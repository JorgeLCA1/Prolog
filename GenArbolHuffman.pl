% ===============================================
% Autor: Jorge Luis Castro
% Fecha: 28 de octubre de 2024
% Descripción: Programa en Prolog que Genera un árbol de Huffman dado un conjunto de frecuencias.
%              Se incluye una versión comentada
%              en C# para referencia.
% ===============================================
% using System;
% using System.Collections.Generic;
% using System.Linq;

% class Program
% {
%     static void Main()
%     {
%         var frequencies = new List<Frequency>
%         {
%             new Frequency('A', 5),
%             new Frequency('B', 9),
%             new Frequency('C', 12),
%             new Frequency('D', 13),
%             new Frequency('E', 16),
%             new Frequency('F', 45)
%         };

%         HuffmanNode huffmanTree = BuildHuffmanTree(frequencies);
%         PrintTree(huffmanTree, "");
%     }

%     // % Clase para representar una frecuencia con su símbolo y frecuencia de ocurrencia.
%     public class Frequency
%     {
%         public char Symbol { get; }
%         public int FrequencyValue { get; }

%         public Frequency(char symbol, int frequencyValue)
%         {
%             Symbol = symbol;
%             FrequencyValue = frequencyValue;
%         }
%     }

%     // % Clase para representar el nodo del árbol de Huffman.
%     public abstract class HuffmanNode
%     {
%         public int FrequencyValue { get; set; }
%     }

%     public class HuffmanLeaf : HuffmanNode
%     {
%         public char Symbol { get; set; }

%         public HuffmanLeaf(char symbol, int frequencyValue)
%         {
%             Symbol = symbol;
%             FrequencyValue = frequencyValue;
%         }
%     }

%     public class HuffmanInternalNode : HuffmanNode
%     {
%         public HuffmanNode Left { get; set; }
%         public HuffmanNode Right { get; set; }

%         public HuffmanInternalNode(HuffmanNode left, HuffmanNode right)
%         {
%             Left = left;
%             Right = right;
%             FrequencyValue = left.FrequencyValue + right.FrequencyValue;
%         }
%     }

%     // % Construye el árbol de Huffman a partir de una lista de frecuencias.
%     static HuffmanNode BuildHuffmanTree(List<Frequency> frequencies)
%     {
%         var nodes = new List<HuffmanNode>(frequencies.Select(f => new HuffmanLeaf(f.Symbol, f.FrequencyValue)));

%         while (nodes.Count > 1)
%         {
%             nodes = nodes.OrderBy(n => n.FrequencyValue).ToList();  // % Ordena nodos por frecuencia.
%             var left = nodes[0];
%             var right = nodes[1];
%             var parent = new HuffmanInternalNode(left, right);

%             nodes.RemoveRange(0, 2);  // % Elimina los nodos combinados.
%             nodes.Add(parent);  // % Agrega el nuevo nodo combinado.
%         }

%         return nodes[0];
%     }

%     // % Función para imprimir el árbol de Huffman.
%     static void PrintTree(HuffmanNode node, string code)
%     {
%         if (node is HuffmanLeaf leaf)
%         {
%             Console.WriteLine($"{leaf.Symbol}: {code}");
%         }
%         else if (node is HuffmanInternalNode internalNode)
%         {
%             PrintTree(internalNode.Left, code + "0");  // % Agrega "0" para la rama izquierda.
%             PrintTree(internalNode.Right, code + "1");  // % Agrega "1" para la rama derecha.
%         }
%     }
% }

% Genera un árbol de Huffman dado un conjunto de frecuencias.
% https://es.wikipedia.org/wiki/Codificación_Huffman
% El algoritmo de Huffman se utiliza para la compresión de datos, construyendo un árbol binario óptimo para la codificación.
huffman(Fs, Hs) :- length(Fs, Len), Len > 1, sort(2, @=<, Fs, Sorted), huffman_tree(Sorted, Hs).

% Caso base para construir el árbol de Huffman.
huffman_tree([fr(X, _) | []], hc(X, '0')).
huffman_tree([fr(_, _) | [fr(_, _) | _]], _).
