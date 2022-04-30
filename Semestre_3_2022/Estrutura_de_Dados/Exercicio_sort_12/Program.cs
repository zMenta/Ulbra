using System;

namespace Exercicio_sort_12
{
    class Program
    {
        static void Main(string[] args)
        {
            const int ARRAY_SIZE = 10;
            int[] array = GenerateArray(ARRAY_SIZE, 10);

            //  Selection
            // // PrintArray(array);
            // DateTime start = DateTime.Now;
            // SelectionSort.Sort(array);
            // DateTime end = DateTime.Now;

            // TimeSpan elapsedTime = new TimeSpan(end.Ticks - start.Ticks);

            // System.Console.WriteLine($"Time it took to Selection sort: {elapsedTime.TotalSeconds:N4} seconds");
            // System.Console.WriteLine();
            // // PrintArray(array);

            //  Bubble
            // PrintArray(array);
            // BubbleSort.Sort(array);
            // System.Console.WriteLine();
            // PrintArray(array);

            //  Merge
            PrintArray(array);
            System.Console.WriteLine();
            MergeSort.Sort(array);

        }

        private static void PrintArray(int[] array)
        {
            foreach (var item in array)
            {
                System.Console.Write(item + ", ");
            }
        }

        public static int[] GenerateArray(int array_size, int random_range = 101)
        {
            int[] array = new int[array_size];
            Random random = new Random();

            for (int i = 0; i < array_size; i++)
            {
                array[i] = random.Next(0, random_range);
            }

            return array;
        }
    }
}
