package tde_04;
import java.util.Random;

/*
Faça uma classe contendo dois arrays do tipo inteiro, um chamado par e outro chamado ímpar. Cada array deve conter 10 elementos.
 A seguir, faça um laço de repetição com 10 iterações e que contenha internamente a geração randômica de números entre 1 e 20.
 Se o valor gerado for par, armazene no array chamado par, caso contrário, no array chamado impar. Ao  final, apresente o conteúdo de cada um dos arrays.
*/

public class Ex08 {
    public static void main(String[] args) {
        Random random = new Random();

        int[] even = new int[10];
        int[] odd = new int[10];

        for(int i = 0; i < 10; i++){
            int num = random.nextInt(19) + 1;

            if( num % 2 == 0){
                even[i] = num;
            }else{
                odd[i] = num;
            }
        }

        for(int i = 0; i < 10;i++){
            System.out.print(even[i]+",");
        }
        System.out.println();

        for(int i = 0; i < 10;i++){
            System.out.print(odd[i]+",");
        }
    }
}
