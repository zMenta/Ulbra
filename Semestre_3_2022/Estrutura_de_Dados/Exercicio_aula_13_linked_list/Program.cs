using System;

namespace Exercicio_aula_13_linked_list
{
    class Program
    {
        static void Main(string[] args)
        {
            List list = new List();
            list.Add("Value1");
            list.Add("Value2");
            list.Add("Value3");
            list.AddFirst("Value4");
            list.Add("Value5");
            list.Write();
            list.RemovePosition(-1);
            list.Write();

            Element element = list.Find(2);
        }
    }
}
