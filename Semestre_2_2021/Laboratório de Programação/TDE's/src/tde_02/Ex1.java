package tde_02;
import java.util.Scanner;

/* 1) Usando a classe Scanner para entrada de dados, crie uma classe
que receba o valor de um produto e a porcentagem de desconto, calcule
 e mostre o valor do desconto e o valor do produto com o desconto.
  Observação: o valor do desconto é calculado por meio da fórmula: valor do desconto = valor do produto * percentual de desconto / 100. */

public class Ex1 {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        System.out.println("Please type the price of the product: ");
        double productPrice = input.nextDouble();

        System.out.println("Now please type the discount of the product: ");
        double discountValue = input.nextDouble();

        //System.out.println(product+" | "+discout);

        double productDiscount = (discountValue * productPrice) / 100;
        double newPrice = productPrice - productDiscount;

        System.out.println("The new price with discount is: "+newPrice);

    }

}
