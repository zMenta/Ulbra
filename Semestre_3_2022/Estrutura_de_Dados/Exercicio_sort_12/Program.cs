using System;

namespace Exercicio_sort_12
{
    class Program
    {
        static void Main(string[] args)
        {
            const int LIST_SIZE = 100;
            int[] list = GenerateArray(LIST_SIZE, 10);

            //  Selection
            // // PrintArray(list);
            // DateTime start = DateTime.Now;
            // SelectionSort.Sort(list);
            // DateTime end = DateTime.Now;

            // TimeSpan elapsedTime = new TimeSpan(end.Ticks - start.Ticks);

            // System.Console.WriteLine($"Time it took to Selection sort: {elapsedTime.TotalSeconds:N4} seconds");
            // System.Console.WriteLine();
            // // PrintArray(list);

            //  Bubble
            // PrintArray(list);
            // BubbleSort.Sort(list);
            // System.Console.WriteLine();
            // PrintArray(list);

            

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
            int[] list = new int[array_size];
            Random random = new Random();

            for (int i = 0; i < array_size; i++)
            {
                list[i] = random.Next(0, random_range);
            }

            return list;
        }
    }
}
