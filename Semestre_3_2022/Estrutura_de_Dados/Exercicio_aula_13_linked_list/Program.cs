using System;

namespace Exercicio_aula_13_linked_list
{
    class Program
    {
        static void Main(string[] args)
        {
            List list = new List();

            System.Console.WriteLine("---- List Menu ----");
            int choice = 0;

            while (choice != 99)
            {
                System.Console.WriteLine("Please type the option you want: ");
                System.Console.WriteLine("1. Add");
                System.Console.WriteLine("2. AddFirst");
                System.Console.WriteLine("3. Clear");
                System.Console.WriteLine("4. WriteFirst");
                System.Console.WriteLine("5. WriteLast");
                System.Console.WriteLine("6. Write");
                System.Console.WriteLine("7. Find value with index");
                System.Console.WriteLine("8. Pop");
                System.Console.WriteLine("9. PopFirst");
                System.Console.WriteLine("10. RemovePosition");
                System.Console.WriteLine("11. RemoveValue");
                System.Console.WriteLine("12. FindValue");
                System.Console.WriteLine("13. FindValueAppearances");
                System.Console.WriteLine("14. RemoveValueAppearances");
                System.Console.WriteLine("15. WriteInverse");
                System.Console.WriteLine("99. Exit Menu");

                choice = int.Parse(Console.ReadLine());


                if (choice == 1)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    list.Add(value);
                }

                if (choice == 2)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    list.AddFirst(value);
                }

                if (choice == 3) list.Clear();

                if (choice == 4) list.WriteFirst();

                if (choice == 5) list.WriteLast();

                if (choice == 6) list.Write();

                if (choice == 7)
                {
                    System.Console.WriteLine("Write the index:");
                    int value = int.Parse(Console.ReadLine());
                    System.Console.WriteLine(list.Find(value).value);
                }

                if (choice == 8) list.Pop();

                if (choice == 9) list.PopFirst();

                if (choice == 10)
                {
                    System.Console.WriteLine("Write the index:");
                    int value = int.Parse(Console.ReadLine());
                    list.RemovePosition(value);
                }

                if (choice == 11)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    list.RemoveValue(value);
                }

                if (choice == 12)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    System.Console.WriteLine(list.FindValueIndex(value));  
                }

                if (choice == 13)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    System.Console.WriteLine(list.FindValueAppearances(value)); 
                }

                if (choice == 14)
                {
                    System.Console.WriteLine("Write the value:");
                    string value = Console.ReadLine();
                    list.RemoveValueAppearances(value);
                }

                if (choice == 15) list.WriteInverse();

            }

        }
    }
}
