package tde_02;

import java.util.Scanner;

/*Elabore uma classe que receba o nome de um produto e o seu valor. O desconto deve ser calculado de acordo com o valor fornecido conforme a imagem.
Utilizando a estrutura if-else, apresenta em tela o nome do produto, valor original do produto e o novo valor depois de ser realizado o desconto.
Caso o valor digitado seja menor que zero, deve ser emitida uma mensagem de aviso. */

public class Ex05 {

    static void myMethod(String var){
        System.out.println("I got called "+var);
    }

    static double discountCalculate(double price){
        double newPrice = price;

        final double percent5 = 0.95;
        final double percent6 = 0.94;
        final double percent7 = 0.93;
        final double percent8 = 0.92;

        if(price >= 50 && price < 200){
            return newPrice*percent5;
        }

        else if(price < 500){
            return newPrice*percent6;
        }

        else if(price < 1000){
            return newPrice*percent7;
        }

        else if(price > 1000){
            return newPrice*percent8;
        }

        return price;
    }

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        System.out.println("Please type the name of the product: ");
        String productName = input.next();


        System.out.println("Please type the price of the product: ");
        double productPrice = input.nextDouble();

        System.out.println("If available discounts applied you need to pay $"+discountCalculate(productPrice));

    }
}
