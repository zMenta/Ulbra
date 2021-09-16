package tde_04;
import java.util.Scanner;

/*Escreva um programa que crie um String e use um laço for para verificar se ele é um palíndromo, ou seja,
 se você inverter a ordem dos caracteres do String, obterá o mesmo String. Por exemplo, “abcdcba” é um palíndromo.*/

public class Ex04 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Write a word: ");
        String word = input.next();

        String inversedWord = "";
        for(int i = word.length()-1; i >= 0; i--) {
            inversedWord += word.charAt(i);
        }

        if(word.equals(inversedWord)){
            System.out.println("This word is a palindrome.");
        }else{
            System.out.println("This word is Not a palindrome.");
        }


    }
}
