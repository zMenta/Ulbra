using System;
namespace Exercícios_aula_03.Exercises
{
    public class Exercise01
    {
        public static void run()
        {
            System.Console.WriteLine("Exercise 01");

            /*1- Faça um programa para ler uma matriz 4 por 4, contendo os valores de notas de g1, e outro de g2. 
            Ao final, o programa deve mostrar as médias dos alunos, mostrando se o aluno está aprovado, em exame ou reprovado.
            Considere média > 7 para aprovação,7 < média >6 para exame; e < 6 como reprovado.
            Importante deve ser validado que as notas aceitas sejam de 0 a 10.*/

            var random = new Random();
            int[,] g1 = new int[4, 4];
            int[,] g2 = new int[4, 4];
            int[,] final_grades = new int[4, 4];


            System.Console.WriteLine("".PadLeft(13, '-') + "G1".PadRight(15, '-'));
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    int value = random.Next(0, 11);
                    g1[i, j] = value;
                    System.Console.Write($"{value,5}");
                }
                System.Console.WriteLine();
            }


            System.Console.WriteLine("".PadLeft(13, '-') + "G2".PadRight(15, '-'));
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    int value = random.Next(0, 11);
                    g2[i, j] = value;
                    System.Console.Write($"{value,5}");
                }
                System.Console.WriteLine();
            }


            System.Console.WriteLine("".PadRight(8, '-') + "Student Averages".PadRight(21, '-'));
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    final_grades[i, j] = (g1[i, j] + g2[i, j]) / 2;
                    System.Console.Write($"{final_grades[i, j],5}");
                }
                System.Console.WriteLine();
            }


            System.Console.WriteLine("".PadRight(8, '-') + "Student Message".PadRight(21, '-'));
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    if (final_grades[i, j] >= 7)
                    {
                        System.Console.WriteLine($"Student [{i},{j}]:\t({final_grades[i, j]})Approved!");
                        continue;
                    }
                    if (final_grades[i, j] >= 6)
                    {
                        System.Console.WriteLine($"Student [{i},{j}]:\t({final_grades[i, j]})Need to do the final exam!");
                        continue;
                    }
                    if (final_grades[i, j] < 6)
                    {
                        System.Console.WriteLine($"Student [{i},{j}]:\t({final_grades[i, j]})Failed");
                    }
                }
                System.Console.WriteLine();
            }
            System.Console.WriteLine("Exercise 01 - END");
        }
    }
}