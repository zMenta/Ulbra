using System;

namespace Ex03
{
    class Program
    {
        static void Main(string[] args)
        {
            Time time = new Time(-50,5125,-6584);

            System.Console.WriteLine(time.Hour);
            System.Console.WriteLine(time.Minute);
            System.Console.WriteLine(time.Seconds);
        }
    }
}
