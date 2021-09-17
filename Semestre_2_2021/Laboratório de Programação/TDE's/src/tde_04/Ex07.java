package tde_04;
import java.util.Random;

/*Uma imagem é formada por pixels. Considere uma imagem com dimensão de 40 x 40 e faça uma classe que contenha um array bidimensional com essas dimensões.
A seguir, para cada posição desse array bidimensional armazene um valor aleatório entre 0 e 255*/

public class Ex07 {
    public static void main(String[] args) {
        Random random = new Random();

        final int size = 5;
        int[][] canvas = new int[size][size];

        for(int y = 0; y < size; y++){
            for(int x = 0; x < size; x++){
                canvas[y][x] = random.nextInt(255);
            }
        }

        for(int x = 0; x < size; x++){
            for(int y = 0; y < size; y++){
                System.out.print(canvas[x][y]+"-");
            }
            System.out.println();
        }
        
    }
}
