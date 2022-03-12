import java.util.Random;

public class Atividade13 {
    public static void main(String[] args) {
        Random random = new Random();

        int[] array = new int[10];
        
        //Generates the data for the array. Values between 0 and 100.
        for (int i = 0; i < array.length; i++) {
                array[i] = random.nextInt(0,100);
        }
        
        //Shows on the ocnsole numbers above 50 in the array and their respective positions.
        boolean showMessage = true;
        for (int i = 0; i < array.length; i++) {
            if (array[i] > 50) {
                System.out.println(i + "| " + array[i]);
                showMessage = false;
            }
        }
        
        if (showMessage) {
            System.out.println("No number is above 50 on the generated array.");
        }

        }
    }

