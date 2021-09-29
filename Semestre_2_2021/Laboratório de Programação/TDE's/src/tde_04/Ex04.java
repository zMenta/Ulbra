package tde_04;
import java.util.Locale;
import java.util.Scanner;

/*Escreva um programa que crie um String e use um laço for para verificar se ele é um palíndromo, ou seja,
 se você inverter a ordem dos caracteres do String, obterá o mesmo String. Por exemplo, “abcdcba” é um palíndromo.*/

public class Ex04 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Write a word: ");
        String word = input.next().toLowerCase();

        String invertedWord = "";
        for(int i = word.length()-1; i >= 0; i--) {
            invertedWord += word.charAt(i);
        }

        if(word.equals(invertedWord)){
            System.out.println("This word is a palindrome.");
        }else{
            System.out.println("This word is Not a palindrome.");
        }

    }
}
