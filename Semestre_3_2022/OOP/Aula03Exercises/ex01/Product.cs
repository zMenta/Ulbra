namespace ex01
{
    public class Product
    {
        public Product(string name, int stock, double price)
        {
            Name = name;
            Stock = stock;
            Price = price;
        }

        public string Name { get; set; }
        public int Stock { get; set; }
        public double Price { get; set; }
    }
}