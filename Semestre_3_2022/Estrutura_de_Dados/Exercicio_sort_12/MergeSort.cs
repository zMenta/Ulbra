using System.Collections.Generic;

namespace Exercicio_sort_12
{
    public class MergeSort
    {
        public static int[] Sort(int[] array)
        {
            if (array.Length == 1)
            {
                return array;
            }

            List<int[]> arrays = DivideArray(array);
            int[] array_left = arrays[0];
            int[] array_right = arrays[1];

            array_left = Sort(array_left);
            array_right = Sort(array_right);
            
            return Merge(array_left, array_right);
        }


        private static int[] Merge(int[] array_left, int[] array_right)
        {
            int[] merged_arrays = new int[array_left.Length + array_right.Length];

            int i = 0;
            int j = 0;
            int array_position = 0;

            while (i < array_left.Length && j < array_right.Length)
            {
                if (array_left[i] < array_right[j])
                {
                    merged_arrays[array_position] = array_left[i];
                    i++;
                }
                else
                {
                    merged_arrays[array_position] = array_right[j];
                    j++;
                }
                array_position++;
            }

            // Now array_left or array_right are already compared / finished.
            while (i < array_left.Length)
            {
                merged_arrays[array_position] = array_left[i];
                i++;
                array_position++;
            }

            while (j < array_right.Length)
            {
                merged_arrays[array_position] = array_right[j];
                j++;
                array_position++;
            }

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