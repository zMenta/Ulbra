using System.Collections.Generic;

namespace ex02.Classes
{
    public class PhoneBook
    {
        public PhoneBook(List<Person> people)
        {
            this.People = people;
        }

        public List<Person> People { get; set; }


        public void show(){
            foreach (var person in this.People)
            {
                System.Console.WriteLine($"Name: {person.Name}");
                System.Console.WriteLine($"Number: +{person.PhoneNumber.Ddd} {person.PhoneNumber.Number}");
                System.Console.WriteLine("------------------------------------------------");
            }
        }
    }
}