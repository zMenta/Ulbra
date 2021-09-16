package tde_04;
import java.util.Scanner;

/*Escreva um programa que crie um array de inteiros data e use um laço for para criar um novo String que exiba o conteúdo do array data entre
 chaves e separado por vírgulas. Por exemplo, se o array data tiver tamanho 4 e armazenar os valores 3, 4, 1, 5, o String “{3, 4, 1, 5}” deve ser criado e exibido.
 */

public class Ex01 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int[] data = new int[4];
        String number = "";
        int num = 5;

        for(int i = 0; i < data.length; i++){
            System.out.println("Type the " + i + "th whole number: ");
            data[i] = input.nextInt();
        }

        for(int i = 0; i < data.length; i++){
           number += (Integer.toString(data[i]) + ",");
        }

        System.out.println(number);


    }
}
