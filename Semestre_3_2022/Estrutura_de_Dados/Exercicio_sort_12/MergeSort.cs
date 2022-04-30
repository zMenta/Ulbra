using System.Collections.Generic;

namespace Exercicio_sort_12
{
    public class MergeSort
    {
        public static int[] Sort(int[] array)
        {
            if (array.Length <= 1)
            {
                return array;
            }

            List<int[]> arrays = DivideArray(array);
            int[] array_left = arrays[0];
            int[] array_right = arrays[1];

            PrintArray(array_left);
            System.Console.WriteLine();
            PrintArray(array_right);
            System.Console.WriteLine();
            System.Console.WriteLine("---------------------------------------------");

            Sort(array_left);
            Sort(array_right);

            return array;
        }


        private static int[] Merge(int[] array1, int[] array2)
        {
            int[] merged_arrays = new int[array1.Length + array2.Length];

            return merged_arrays;
        }

        private static List<int[]> DivideArray(int[] array)
        {
            int size = array.Length;
            int half_size = size / 2;
            int odd_value = 0;

            if (size % 2 != 0)
            {
                odd_value = 1;
            }

            int[] array_left = new int[half_size + odd_value];
            int[] array_right = new int[half_size];

            for (int i = 0; i < half_size + odd_value; i++)
            {
                array_left[i] = array[i];
            }

            for (int i = 0; i < half_size; i++)
            {
                array_right[i] = array[i + half_size + odd_value];
            }

            return new List<int[]> { array_left, array_right };
        }

        private static void PrintArray(int[] array)
        {
            foreach (var item in array)
            {
                System.Console.Write(item + ", ");
            }
        }
    }
}