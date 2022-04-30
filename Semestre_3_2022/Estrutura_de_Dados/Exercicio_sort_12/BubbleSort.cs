namespace Exercicio_sort_12
{
    public static class BubbleSort
    {
        public static int[] Sort(int[] array)
        {
            int size = array.Length;

            for (int i = 0; i < size; i++)
            {
                for (int j = 0; j < size - i - 1; j++)
                {
                    if (array[j] > array[j + 1])
                    {
                        int swap_value = array[j + 1];
                        array[j + 1] = array[j];
                        array[j] = swap_value;
                    }
                }
            }

            return array;
        }
    }
}