package tde_04;
import java.util.Random;

/*Crie uma classe que armazena os 12 meses do ano em um array. A seguir, gere um valor randômico entre 0 e 11 e apresente o mês correspondente
ao valor sorteado. Considere que o valor 0 corresponde ao mês de janeiro e o valor 11, ao mês de dezembro.*/

public class Ex06 {
    public static void main(String[] args) {
        Random random = new Random();

        String[] yearMonth = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        System.out.print("The generated month is: ");
        System.out.print(yearMonth[random.nextInt(11)]);

    }
}
