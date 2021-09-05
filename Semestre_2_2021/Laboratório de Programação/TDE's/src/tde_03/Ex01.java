package tde_03;
import java.util.Random;

/*1 - Crie uma classe que simule a jogada de um dado de seis lados (números de 1 a 6) por três vezes.
Ao  final some seus valores e apresente o resultado das três jogadas.
 */

public class Ex01 {
    public static void main(String[] args) {
        Random dice = new Random();

        int diceSum = 0;
        for(int i = 0; i < 3; i++){
            int diceRoll = dice.nextInt(6) + 1;
            diceSum += diceRoll;

            System.out.println("Rolled dice: "+diceRoll);

        }

        System.out.println("Rolled dice numbers sum: "+diceSum);

    }
}
