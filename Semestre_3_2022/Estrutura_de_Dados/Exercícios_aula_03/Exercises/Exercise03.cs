using System;

namespace Exercícios_aula_03.Exercises
{
    public class Car
    {
        public Car(string plate, string model, string color)
        {
            Plate = plate;
            Model = model;
            Color = color;
        }

        public string Plate { get; set; }
        public string Model { get; set; }
        public string Color { get; set; }
    }
    public class Exercise03
    {
        public static void run()
        {
            Car kombi = new Car("589x9l", "kombi", "red");
            Car beattle = new Car("kar245c", "beattle", "blue");
            Car lada = new Car("xa25xa98", "lada", "green");

            Car[] car_list = { kombi, beattle, lada };

            Car[,] matrix = new Car[3, 3];
            string choice = string.Empty;

            while (!choice.Equals("E"))
            {
                show_menu_option();
                choice = Console.ReadLine().ToUpper();

                switch (choice)
                {
                    case "S":
                        show_parking_lot(matrix);
                        break;

                    case "A":
                        add_car_to_parking_lot(matrix, car_list);
                        break;

                    case "R":
                        remove_value_from_parking_lot(matrix);
                        break;

                    case "C":
                        clear_matrix(matrix);
                        break;

                    case "E":
                        break;

                    default:
                        System.Console.WriteLine("Invalid Option");
                        break;
                }
            }
        }

        private static void show_menu_option(string title = "Welcome to the Parking Lot Manager", int size = 20, char pad = '-')
        {
            int title_size = title.Length;

            System.Console.WriteLine("".PadLeft(size, pad) + title + "".PadLeft(size, pad));
            System.Console.WriteLine();
            System.Console.WriteLine("A - Add an car;");
            System.Console.WriteLine("R - Remove a car;");
            System.Console.WriteLine("C - Clear parking lot;");
            System.Console.WriteLine("S - Show parking lot;");
            System.Console.WriteLine("E - Exit parking lot manager.");
            System.Console.WriteLine();
            System.Console.WriteLine("".PadLeft(size, pad) + "".PadLeft(title_size, pad) + "".PadLeft(size, pad));
        }

        private static void show_parking_lot(Car[,] matrix, int row_count = 3, int collumn_count = 3)
        {
            for (int i = 0; i < row_count; i++)
            {
                for (int j = 0; j < collumn_count; j++)
                {
                    if (matrix[i, j] != null)
                    {
                        System.Console.Write($"\t{matrix[i, j].Model}");
                    }
                    else
                    {
                        System.Console.Write("\t empty");
                    }
                }
                System.Console.WriteLine();
            }
        }

        private static void show_cars(Car[] car_list)
        {
            int counter = 0;
            foreach (var car in car_list)
            {
                System.Console.WriteLine($"{counter} | {car.Model} | {car.Plate} | {car.Color}");
                counter++;
            }
        }
        private static void add_car_to_parking_lot(Car[,] matrix, Car[] car_list)
        {
            System.Console.WriteLine("Type the row position: ");
            int row_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Type the collumn position: ");
            int collumn_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Now type the car to insert into the position: ");
            show_cars(car_list);
            int car_code = int.Parse(Console.ReadLine());

            matrix[row_value, collumn_value] = car_list[car_code];
        }
        private static void remove_value_from_parking_lot(Car[,] matrix)
        {
            System.Console.WriteLine("Type the row position: ");
            int row_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine("Type the collumn position: ");
            int collumn_value = int.Parse(Console.ReadLine());
            System.Console.WriteLine($"Value removed from position [{row_value},{collumn_value}]");

            matrix[row_value, collumn_value] = null;
        }
        private static void clear_matrix(Car[,] matrix, int row_count = 3, int collumn_count = 3)
        {
            for (int i = 0; i < row_count; i++)
            {
                for (int j = 0; j < collumn_count; j++)
                {
                    matrix[i, j] = null;
                }
            }
        }

    }
}