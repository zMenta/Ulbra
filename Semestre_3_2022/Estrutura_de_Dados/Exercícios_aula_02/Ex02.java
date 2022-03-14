import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        /*
         * Leia um conjunto de notas, cuja quantidade seja determinada pelo usuário.
         * Calcule a média de todas elas. Exiba o conjunto das notas maiores do que a
         * média calculada. Em seguida, de forma agrupada, exiba o outro conjunto de
         * notas (menores do que a média).Utilize vetores
         */

        Scanner input = new Scanner(System.in);

        System.out.println("How many grades are you going to register? (integer)");
        int quantity = input.nextInt();

        double[] grades = new double[quantity];
        double average = 0;

        for (int i = 0; i < grades.length; i++) {
            System.out.println("Type the "+i+" grade: ");
            grades[i] = input.nextDouble();

            average += grades[i];
        }

        input.close();
        average /= grades.length;

        System.out.println("Average: "+average);
        System.out.println("Grade above average:");
        for (int i = 0; i < grades.length; i++) {
            if (grades[i] > average) {
                System.out.println(i+"| "+grades[i]);
            }
        }
        
        System.out.println("Grade below average:");
        for (int i = 0; i < grades.length; i++) {
            if (grades[i] < average) {
                System.out.println(i+"| "+grades[i]);
            }
        }
    }
}
