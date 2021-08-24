package tde_02;
import java.util.Scanner;

/*
Considere a seguinte informação a respeito do cálculo da aposentadoria. Para se aposentar por idade, as mulheres precisam ter atingido 60
anos de idade e os homens, 65. Já na aposentadoria por tempo de contribuição, o tempo mínimo exigido é de 30 anos para as mulheres e de 35
 anos para os homens. Com base nessas informações, elabore uma classe que receba a idade de uma pessoa, seu sexo e a quantidade de anos de
 contribuição. A seguir, calcule a quantidade de anos que falta de contribuição para se aposentar, ou então emita a mensagem: “você já tem o direito a aposentadoria”.
*/

public class Ex04 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("KNOW WHEN YOU CAN RETIRED");
        System.out.println("Type your gender(m/f): ");
        String gender = input.next();

        System.out.println("Type your age: ");
        int age = input.nextInt();

        System.out.println("Type the years of work contribution: ");
        int contributionYears = input.nextInt();

        boolean notRetired = true;

        if(gender=="m"){
            if(age > 65 || contributionYears > 30){
                System.out.println("You can retire man.");
                notRetired = false;
            }
        }else{
            if(age > 60 || contributionYears > 30){
                System.out.println("You can retire.");
                notRetired = false;
            }
        }

        if(notRetired){
            System.out.println("You are not retired.");
        }




    }

}
