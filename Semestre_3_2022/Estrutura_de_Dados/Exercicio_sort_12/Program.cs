using System;

namespace Exercicio_sort_12
{
    class Program
    {
        static void Main(string[] args)
        {
            const int ARRAY_SIZE = 100000;
            int[] array = GenerateArray(ARRAY_SIZE, 100);

            System.Console.WriteLine();
            System.Console.WriteLine("Array with size of "+ARRAY_SIZE);

            //  Bubble
            System.Console.WriteLine("------------------- Bubble ------------------");
            // PrintArray(array = GenerateArray(ARRAY_SIZE, 10));
            array = GenerateArray(ARRAY_SIZE, 10);
            DateTime start = DateTime.Now;
            BubbleSort.Sort(array);
            DateTime end = DateTime.Now;
            TimeSpan elapsedTime = new TimeSpan(end.Ticks - start.Ticks);
            System.Console.WriteLine($"Bubble Sort time: {elapsedTime.TotalSeconds:N4} seconds");

            //  Selection
            System.Console.WriteLine("------------------- Selection ------------------");
            // PrintArray(array);
            array = array = GenerateArray(ARRAY_SIZE, 10);
            start = DateTime.Now;
            SelectionSort.Sort(array);
            end = DateTime.Now;
            elapsedTime = new TimeSpan(end.Ticks - start.Ticks);
            System.Console.WriteLine($"Selection Sort time: {elapsedTime.TotalSeconds:N4} seconds");

            //  Merge
            System.Console.WriteLine("------------------- Merge ------------------");
            // PrintArray(array = GenerateArray(ARRAY_SIZE, 10));
            array = GenerateArray(ARRAY_SIZE, 10);
            start = DateTime.Now;
            array = MergeSort.Sort(array);
            end = DateTime.Now;
            elapsedTime = new TimeSpan(end.Ticks - start.Ticks);
            System.Console.WriteLine($"Merge Sort time: {elapsedTime.TotalSeconds:N4} seconds");
            System.Console.WriteLine();

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
