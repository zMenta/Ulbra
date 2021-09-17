package tde_04;
import java.util.Scanner;
import java.util.Arrays;

/*Elabore uma classe que receba 5 notas de alunos por meio, armazene essas notas em um array de cinco elementos,
apresente em tela as cinco notas em ordem decrescente (da maior para a menor) e a média aritmética das notas*/

public class Ex05 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        double[] grades = new double[5];
        double sum = 0;

        for(int i = 0; i < 5; i++){
            System.out.println("Write the grades: ");
            grades[i] = input.nextDouble();
            sum += grades[i];
        }

        Arrays.sort(grades);

        System.out.print("Sorted grades: ");
        for(int i = 0; i < grades.length; i++){
            System.out.print(grades[i] + ", ");
        }

        System.out.println("\nAverage grade: "+ sum/grades.length);

    }
}
