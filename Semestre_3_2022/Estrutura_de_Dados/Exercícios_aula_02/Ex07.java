import java.util.Random;

public class Ex07 {
    public static void main(String[] args) {
        /*
         * Escreva uma classe Estatística em Java que faça a leitura de uma Matriz 5x5,
         * a classe deve ao final mostrar:
         * 
         * a) A moda dos elementos no array (elemento mais freqüente).
         * b) A mediana dos elementos no array (elemento central).
         * c) A média.
         */

        Random random = new Random();
        int[][] matrix = new int[5][5];

        for (int i = 0; i < matrix.length; i++) {
            int j = 0;
            matrix[i][j] = random.nextInt(0,10);
            for (j = 0; j < matrix.length; j++) {
                matrix[i][j] = random.nextInt(0,10);
            }
        }
        
        for (int i = 0; i < matrix.length; i++) {
            int j = 0;
            for (j = 0; j < matrix.length; j++) {
                System.out.print(matrix[i][j]+", ");
            }
            System.out.println();
        }
    }
}
