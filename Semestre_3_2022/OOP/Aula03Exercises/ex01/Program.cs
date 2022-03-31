using System;

namespace ex01
{
    class Program
    {
        static void Main(string[] args)
        {
            /*1-  Identifique   as classes e implemente um	 programa para a seguinte especificação: 
            “O	 supermercado	 vende	 diferentes tipos de produtos.	 Cada	 produto tem um preço e uma	 quantidade em estoque.
            Um	pedido	de um	cliente	é composto de itens,	onde	cada item  específica o	produto que o cliente deseja e 
             a respectiva quantidade. Esse pedido pode ser pago em dinheiro, cheque ou cartão.” */

            Product banana = new Product("banana", 20, 4);
            Product tv = new Product("tv", 3, 200);

            System.Console.WriteLine(banana.Stock);
            Order order = new Order(banana);
            order.AddToOrder(banana,3);
            order.AddToOrder(tv,4);

            System.Console.WriteLine(banana.Stock);

            order.Pay();

        }
    }
}
