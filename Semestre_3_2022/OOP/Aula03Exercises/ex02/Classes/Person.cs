namespace ex02.Classes
{
    public class Person
    {

        public Person(string name, PhoneNumber phoneNumber)
        {
            this.Name = name;
            this.PhoneNumber = phoneNumber;
        }
        public string Name { get; set; }
        public PhoneNumber PhoneNumber { get; set; }

    }
}