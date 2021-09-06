package tde_03;
import java.util.Scanner;

/*5 - Elabore uma classe que receba uma frase e verique que se essa frase possui palavras impróprias. As palavras impróprias são: sexo e sexual.
Caso encontre uma dessas palavras, emita em tela a mensagem “conteúdo impróprio”, caso contrário “conteúdo liberado”, */

public class Ex05 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        final int NOT_FOUND = -1;

        System.out.println("Type a phrase to be verified: ");
        String phrase = input.nextLine();
        phrase = phrase
                .toLowerCase()
                .trim();

        System.out.println(phrase);

        if(phrase.indexOf("sexo") == NOT_FOUND & phrase.indexOf("sexual") == NOT_FOUND){
            System.out.println("Allowed content");
        }else{
            System.out.println("Improper content");
        }

    }
}
