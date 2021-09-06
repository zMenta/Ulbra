package tde_03;
import java.util.Scanner;

/*4 - Construa uma classe que receba uma frase qualquer e mostre essa frase de trás para a frente e sem espaços em branco,*/

public class Ex04 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String phrase;
        String newPhrase = "";

        System.out.println("Type an phrase: ");
        phrase = input.nextLine();
        phrase = phrase.replaceAll("\\s","");
        
        for(int i = phrase.length()-1; i >= 0; i--){
            newPhrase += phrase.charAt(i);
        }

        System.out.println(phrase);
        System.out.println(newPhrase);

    }
}
