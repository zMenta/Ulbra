using System;

namespace Exercicio_sort_12
{
    public static class SelectionSort
    {
        public static int[] Sort(int[] array)
        {
            int size = array.Length;

            for (int i = 0; i < size; i++)
            {
                int lowest_value = array[i];
                int old_value_position = i;
                for (int j = i; j < size; j++)
                {
                    if (array[j] < lowest_value)
                    {
                        lowest_value = array[j];
                        old_value_position = j;
                    }
                }

                int old_value = array[i];
                array[i] = lowest_value;
                array[old_value_position] = old_value;
            }

            return array;
        }
    }
}