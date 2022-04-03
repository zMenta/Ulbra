using System;
using System.Collections.Generic;
using Exercícios_aula_03.Exercises;

namespace Exercícios_aula_03
{
    class Program
    {
        static void Main(string[] args)
        {

            var exerciseMap = new Dictionary<string, Action>
            {
                {"1", Exercise01.run},
                {"2", Exercise02.run},
                {"3", Exercise03.run}
            };

            if (args.Length == 0)
            {
                System.Console.WriteLine("No exercise specified, running them all.");

                foreach (var exerciseAction in exerciseMap.Values)
                {
                    exerciseAction();
                }

                return;
            }

            var exercises = args[0].Split(',');

            foreach (var exercise in exercises)
            {
                if (!exerciseMap.TryGetValue(exercise, out var exerciseAction))
                {
                    Console.WriteLine($"Exercise not found of id {exercise}");
                    continue;
                }
                exerciseAction();
            }
        }
    }
}
