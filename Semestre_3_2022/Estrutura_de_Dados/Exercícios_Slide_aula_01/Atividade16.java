import java.util.Random;

public class Atividade16 {
    public static void main(String[] args) {
        Random random = new Random();

        int[] array10 = new int[10];
        int[] array5 = new int[5];
        int[] result1 = new int[10];
        int[] result2 = new int[10];

        int array5Sum = 0;
        
        //Generates the data for the arrays. Values between 0 and 100.
        for (int i = 0; i < array10.length; i++) {
            array10[i] = random.nextInt(0,100);
            if (i < 5) {
                array5[i] = random.nextInt(0,100);
                array5Sum += array5[i];
            }
        }

        //Insert the data for the resulting arrays.
        int result1Position = 0;
        int result2Position = 0;
        for (int i = 0; i < result1.length; i++) {
            if (array10[i] % 2 == 0) {
                result1[result1Position] = array10[i] + array5Sum;
                result1Position++;
            }else{
                result2[result2Position] = array10[i] + array5Sum;
                result2Position++;
            }
        }

        //Write the data on the console.
        System.out.println("Array 1: ");
        for (int i = 0; i < array10.length; i++) {
            System.out.print(result1[i] + ", ");
        }

        
        System.out.println();
        System.out.println("Array 2: ");
        for (int i = 0; i < array10.length; i++) {
            System.out.print(result2[i] + ", ");
        }
    }
}
