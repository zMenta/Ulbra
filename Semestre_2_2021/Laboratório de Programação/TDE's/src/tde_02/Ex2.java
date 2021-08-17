package tde_02;
import java.util.Scanner;

/*O Imposto sobre a Transmissão de Bens Móveis (ITBI) é aplicado sobre o valor de um imóvel a ser negociado.
 A base de cálculo do ITBI (o valor a ser considerado no cálculo) será o maior valor entre o valor de
 transação (o valor negociado) e o valor venal de referência (fornecido pela Prefeitura). Com base nisso,
  elabore uma classe que receba o valor da transação, o valor venal e o percentual de imposto. Após isso,
   encontre o maior valor e aplique o percentual sobre ele. Ao final, apresente o valor do imposto a ser pago.
    Observação: o valor do imposto a ser pago é calculado por meio da fórmula: valor do imposto = maior valor * percentual / 100.
    Para entrada e saída de dados utilize a classe JOptionPane.*/


public class Ex2 {

    public static void main(String[] args) {

        double taxValue;
        double venalValue;
        double transactionValue;
        double highestValue;
        double finalTaxValue;

        Scanner input = new Scanner(System.in);

        System.out.println("Please type the tax value: ");
        taxValue = input.nextDouble();

        System.out.println("Now type the Venal price: ");
        venalValue = input.nextDouble();

        System.out.println("Type the transaction value: ");
        transactionValue = input.nextDouble();

        if(venalValue >= transactionValue){
            highestValue = venalValue;
        }else{
            highestValue = transactionValue;
        }

        finalTaxValue = (highestValue * taxValue) / 100;

        System.out.println("The price of the tax is: "+finalTaxValue);


    }

}
