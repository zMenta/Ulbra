using System;
using System.Collections.Generic;

using ex02.Classes;

namespace ex02
{
    class Program
    {

        /*2-  Identifique os atributos de  uma agenda	
        telefônica, modele as classes, atributos e métodos necessários
        para a futura implementação.*/
        static void Main(string[] args)
        {
            PhoneNumber phone1 = new PhoneNumber(51,355355);
            PhoneNumber phone2 = new PhoneNumber(15,389537);

            Person john = new Person("John", phone1);
            Person bob = new Person("Bob", phone2);
            Person bob_mom = new Person("Ana", phone2);

            List<Person> friends_group = new List<Person>{john, bob};
        
            PhoneBook phoneBook2 = new PhoneBook(friends_group);

            phoneBook2.show();
            phoneBook2.People.Add(bob_mom);
            System.Console.WriteLine(" *** Added Bob's mom to the list. ***");
            phoneBook2.show();

        }
    }
}
