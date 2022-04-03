using System;

namespace Exercícios_aula_03.Exercises
{
    public class Exercise02
    {
        public static void run()
        {

            /*2-Faça um programa, que uma matriz seja criada de 4 por 4 contento valor 0 em todos os campos.O programa deve apresentar o seguinte menu:
                Adicionar elemento
                Remover elemento(coloca o valor 0)
                Limpar Matriz
                Mostrar Matriz
                Sair
                Ao pressionar A no menu, o usuário irá informar a linha e coluna e o elemento que deseja adicionar. Se já existir um valor na posição o mesmo deve informar ao usuário para aí sim sobrescrever o valor.
                Ao pressionar R, o usuário deve informar a linha e coluna e o valor deve ser apagado “0”;
                Ao pressionar L, a matriz deve ser “limpa” adicionando o valor 0 em todos os campos
                Ao pressionar M, o programa deve mostrar a matriz e os valores;
                Ao pressionar S, o programa deve para a execução;
                IMPORTANTE o programa deve validar os índices da matriz e as opções do menu;
            */

            int[,] matrix = new int[4, 4];
            string choice = string.Empty;

            while (!choice.Equals("E"))
            {
                show_menu_option();
                choice = Console.ReadLine().ToUpper();
                Console.Clear();

                switch (choice)
                {
                    case "S":
                        show_matrix(matrix);
                        break;

                    case "A":
                        add_value_to_matrix(matrix);
                        break;

                    case "R":
                        remove_value_from_matrix(matrix);
                        break;

                    case "C":
                        clear_matrix(matrix);
                        break;

                    case "E":
                        System.Console.WriteLine("Goodbye, have a good time!");
                        break;

                    default:
                        System.Console.WriteLine("Invalid Option");
                        break;
                }
            }
        }

        private static void show_menu_option(string title = "Welcome to the matrix manager", int size = 20, char pad = '-')
        {
            int title_size = title.Length;

            System.Console.WriteLine("".PadLeft(size, pad) + title + "".PadLeft(size, pad));
            System.Console.WriteLine();
            System.Console.WriteLine("A - Add an value into the matrix;");
            System.Console.WriteLine("R - Remove an value from the matrix;");
            System.Console.WriteLine("C - Clear the whole matrix;");
            System.Console.WriteLine("S - Show the matrix values;");
            System.Console.WriteLine("E - Exit matrix manager.");
            System.Console.WriteLine();
            System.Console.WriteLine("".PadLeft(size, pad) + "".PadLeft(title_size, pad) + "".PadLeft(size, pad));
        }

        private static void show_matrix(int[,] matrix, int row_count = 4, int collumn_count = 4)
        {
            for (int i = 0; i < row_count; i++)
            {
                for (int j = 0; j < collumn_count; j++)
                {
                    System.Console.Write($"\t{matrix[i, j]}");
                }
                System.Console.WriteLine();
            }
        }

        private static void add_value_to_matrix(int[,] matrix)
        {
            System.Console.WriteLine("Type the row position: ");
            int row_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Type the collumn position: ");
            int collumn_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Now type the value to insert into the position: ");
            int number = int.Parse(Console.ReadLine());

            matrix[row_value, collumn_value] = number;
        }
        private static void remove_value_from_matrix(int[,] matrix)
        {
            System.Console.WriteLine("Type the row position: ");
            int row_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Type the collumn position: ");
            int collumn_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine($"Value removed from position [{row_value},{collumn_value}]");

            matrix[row_value, collumn_value] = 0;
        }
        private static void clear_matrix(int[,] matrix, int row_count = 4, int collumn_count = 4)
        {
            for (int i = 0; i < row_count; i++)
            {
                for (int j = 0; j < collumn_count; j++)
                {
                    matrix[i, j] = 0;
                }
            }
        }

    }
}