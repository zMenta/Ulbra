import java.util.Random;

public class Ex06 {
    public static void main(String[] args) {
        /*
         * Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o seu
         * preenchimento automático de forma randômica. Em seguida, exiba os valores
         * deste vetor.
         */

        Random random = new Random();
        int[] array = new int[50];
        
        for (int i = 0; i < array.length; i++) {
            array[i] = random.nextInt();
        }

        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }
    }
}
