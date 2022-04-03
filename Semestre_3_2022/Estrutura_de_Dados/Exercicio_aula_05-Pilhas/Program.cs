using System;

namespace Exercicio_aula_05_Pilhas
{
    class Program
    {
        static void Main(string[] args)
        {
            //Basic pile exercise 

            Random random = new Random();
            int[] pile = new int[5];
            int top_position = -1;

            void push()
            {
                if (top_position < pile.Length-1)
                {
                    top_position++;
                    pile[top_position] = random.Next(1, 10);
                }
                else
                {
                    System.Console.WriteLine("Can't add more values, pile is full.");
                }
            }

            void pop()
            {
                if (top_position >= 0)
                {
                    pile[top_position] = 0;
                    top_position--;
                }
                else
                {
                    System.Console.WriteLine("Can't remove more values, pile is empty");
                }
            }

            void show()
            {
                for (int i = 0; i < pile.Length; i++)
                {
                    System.Console.Write($"\t{pile[i]},");
                }
            }

            int choice = 1;
            while (choice != 0)
            {

                show();
                System.Console.WriteLine("\n1 - Push | 2 - Pop | 0 - stop");
                choice = int.Parse(Console.ReadLine());

                if (choice == 1) push();
                if (choice == 2) pop();
                if (choice == 0) break;
            }
        }
    }
}
