package tde_02;
import java.util.Scanner;

/*Faça uma classe que apresente em tela a tabuada de qualquer número.
 O usuário fornece o número desejado e a classe apresenta a relação de todos os cálculos de 1 a 10. */

public class Ex08 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Please type a number: ");
        int num = input.nextInt();

        for(int i = 1; i <= 10; i++){
            System.out.println(i+" X " +num+ " = " +num*i);
        }

    }
}
