package tde_02;
import java.util.Scanner;

/*Usando a classe JOptionPane para entrada de dados, elabore uma classe que receba a nota de duas provas e de um trabalho.
 Calcule e mostre a média e o resultado final (aprovado ou reprovado). Para calcular a média utilize a fórmula seguinte:
 média = (nota da prova 1 + nota da prova 2 + nota do trabalho) / 3. Considere que a média mínima para aprovação é 6. */

public class Ex03 {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        double testGrade1;
        double testGrade2;
        double workGrade;

        System.out.println("Type the first grade: ");
        testGrade1 = input.nextDouble();

        System.out.println("Type the second grade: ");
        testGrade2 = input.nextDouble();

        System.out.println("Type the work grade: ");
        workGrade = input.nextDouble();

        double finalGrade = (testGrade1+testGrade2+workGrade)/3;

        System.out.print("Your grade is "+finalGrade+" and your situation is: ");
        if (finalGrade >= 6){
            System.out.print("PASSED");
        }else{
            System.out.print("FAILED");
        }

    }

}
