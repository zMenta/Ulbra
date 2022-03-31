using System.Collections.Generic;
using System;


namespace ex01
{

    public class Order
    {

        public Order(Product products)
        {
            AddToOrder(products);
        }
        public List<Product> Products { get; set; }

        public void Pay(string payment_method = "money")
        //Pays the order with money, check or card.
        {
            string p_method = "";
            switch (payment_method)
            {
                case "money":
                    p_method = "money";
                    break;
                case "check":
                    p_method = "check";
                    break;
                case "card":
                    p_method = "card";
                    break;
                default:
                    p_method = "invalid";
                    break;
            }

            double value_to_pay = GetPrice();

            System.Console.WriteLine($"You paid {value_to_pay} with {p_method}");

        }

        public void AddToOrder(Product product, int quantity = 1)
        {
            if ((product.Stock - quantity) > 0)
            {
                this.Products.Add(product);
                product.Stock -= quantity;
            }
            else
            {
                throw new ArgumentException("Can't add product to the order with the current quantity desired to add it. Product Stock is no sufficient");
            }
        }


        private double GetPrice()
        //Returns the total value that needs to be paid.
        {
            double total = 0;
            foreach (var item in this.Products)
            {
                total += item.Stock * item.Stock;
            }
            return total;
        }

    }
}