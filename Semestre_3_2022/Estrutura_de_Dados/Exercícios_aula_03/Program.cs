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
                {"1", Exercise01.run}
            };


            // Exercise01.run();

            // Exercise01 ex = new Exercise01();

            if( true){
                exerciseMap.TryGetValue(args[0], out var execiseAction);
                execiseAction();
            }

        }
    }
}
