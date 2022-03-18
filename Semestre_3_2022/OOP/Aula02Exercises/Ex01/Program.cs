using System;
using Ex01.Entities;

namespace Ex01
{
    class Program
    {
        static void Main(string[] args)
        {
            Triangle triangle = new Triangle(2,7);
        
            System.Console.WriteLine(triangle.CalculateArea());
        }
    }
}
