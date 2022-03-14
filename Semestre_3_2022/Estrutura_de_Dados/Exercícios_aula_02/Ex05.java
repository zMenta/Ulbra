public class Ex05 {
    public static void main(String[] args) {

        /*
         * Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o seu
         * preenchimento automático com os números de 101 a 150, ou seja, na posição
         * número 0 ponha 101, na posição 1 ponha o número 102, e assim sucessivamente.
         * Em seguida, exiba os valores deste vetor.
         */

        int[] array = new int[50];
        
        for (int i = 0; i < array.length; i++) {
            array[i] = 101+i;
        }

        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }
    }
}
