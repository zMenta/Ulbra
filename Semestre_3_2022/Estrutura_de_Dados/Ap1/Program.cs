using System;
namespace Ap1
{
    class Program
    {
        static void Main(string[] args)
        {
            /*Find the matrix pattern 
            [ 1 , 1 ]
            [ 1 , 0 ]
            
            In given array formed from 0 and 1's. The array must be at least 100x100.

            a) The program must be able to read a matrix at least 100x100;
            b) The program must be able to read random or "test" matrixes;
            c) The program must have a run time timer;
            d) The program must be able to count how many patterns it found.
            */

            // Pattern is given in an array of 4 elements. First 2 number are the 2 row values of the matrix,
            // the other two corresponds to the other row of numbers.
            int[] pattern = new int[4] { 1, 1, 1, 0 };
            int matrix_size = 10;
            bool printPatternPosition = true;

            int[,] matrix = GenerateMatrix(matrix_size);
            // int[,] matrix = { { 1, 1, 1 }, { 1, 1, 0 }, { 1, 0, 1 } };

            PrintMatrix(matrix);
            int patterns_found = FindPattern(matrix, pattern, matrix_size, printPatternPosition);

            System.Console.WriteLine($"Patterns Found: {patterns_found}");
        }

        private static int[,] GenerateMatrix(int matrix_size)
        {
            int[,] matrix = new int[matrix_size, matrix_size];
            Random random = new Random();

            for (int i = 0; i < matrix_size - 1; i++)
            {
                for (int j = 0; j < matrix_size - 1; j++)
                {
                    matrix[i, j] = random.Next(0, 2);
                }
            }

            return matrix;
        }

        private static void PrintMatrix(int[,] matrix)
        {
            int row_count = matrix.GetLength(0);
            int column_count = matrix.GetLength(1);

            for (int i = 0; i < row_count; i++)
            {
                for (int j = 0; j < column_count; j++)
                {
                    System.Console.Write($"\t{matrix[i, j]},");
                }
                System.Console.WriteLine();
            }
        }

        private static int FindPattern(int[,] matrix, int[] pattern, int matrix_size, bool printPatternPosition = false)
        {
            int found_pattern_counter = 0;

            for (int i = 0; i < matrix_size - 1; i++)
            {
                for (int j = 0; j < matrix_size; j++)
                {
                    // reads the matrix 
                    if (j < matrix_size - 1)
                    {
                        int[] read = new int[4] { matrix[i, j], matrix[i, j + 1], matrix[i + 1, j], matrix[i + 1, j + 1] };

                        // compares it to the pattern
                        if (EqualArray(read, pattern))
                        {
                            found_pattern_counter++;

                            if (printPatternPosition)
                            {
                                System.Console.WriteLine($"{found_pattern_counter}# Pattern start position: [{i},{j}]");
                            }
                        }
                    }
                }
            }

            return found_pattern_counter;
        }

        private static bool EqualArray(int[] array1, int[] array2)
        //<summary>
        //Returns true if both arrays are equal in each element.
        //<summary>
        {
            if (array1.Length != array2.Length)
            {
                throw new Exception("Can't compare arrays. Array lenghts are different.");
            }
            bool isEqual = true;

            for (int i = 0; i < array1.Length; i++)
            {
                if (array1[i] != array2[i])
                {
                    isEqual = false;
                }
            }

            return isEqual;
        }
    }
}
