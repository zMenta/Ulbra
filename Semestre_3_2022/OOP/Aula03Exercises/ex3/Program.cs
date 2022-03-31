using System;

namespace ex3
{
    class Program
    {
        static void Main(string[] args)
        {

            Book book = new Book("Narnia");

            book.LoanBook();
            book.LoanBook();
            book.ReturnBook();
            book.ReturnBook();
            book.LoanBook();
        }
    }
}
