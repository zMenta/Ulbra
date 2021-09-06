package tde_03;
import java.util.Scanner;

/*2 - Uma farmácia precisa ajustar os preços de seus produtos em 12%. Elabore uma classe que receba o valor do produto e aplique o percentual de acréscimo.
 O novo valor a ser calculado deve ser arredondado para mais ou para menos usando o método round.
 A classe deve também conter um laço de repetição que encerre o programa quando o usuário fornecer o valor zero
(0) para o valor do produto. Dessa forma, o usuário digita o valor do produto, a classe calcula e mostra o valor com acréscimo,
 a seguir solicita um novo valor. Esse processo continua enquanto o valor do produto for diferente de zero; caso contrário o programa será encerrado*/

public class Ex02 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int num = 0;

        System.out.println("\n\t----Pharmacy price adjust (12%)----");
        do{
            System.out.println("Write the product price: ");
            num = input.nextInt();

            if (num != 0) {
                System.out.println("The new price is : " + Math.round(num * 1.12));
            }

        }while( num != 0);


    }
}
