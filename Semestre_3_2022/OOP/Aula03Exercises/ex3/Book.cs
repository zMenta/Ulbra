namespace ex3
{
    public class Book
    {
        public Book(string name)
        {
            Name = name;
            IsBookLoaned = false;
        }

        public string Name { get; set; }
        public bool IsBookLoaned { get; set; }


        public void LoanBook()
        {
            if (!IsBookLoaned)
            {
                System.Console.WriteLine($"The book {Name} was loaned!");
                this.IsBookLoaned = true;
            }
            else
            {
                System.Console.WriteLine("This book is already loaned.");
            }
        }

        public void ReturnBook()
        {
            if (IsBookLoaned)
            {
                System.Console.WriteLine($"The book {Name} was returned!");
                this.IsBookLoaned = false;
            }
            else
            {
                System.Console.WriteLine("Can't return a book that is not loaned.");
            }
        }

    }
}