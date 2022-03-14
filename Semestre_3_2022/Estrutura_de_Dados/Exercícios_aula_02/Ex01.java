import java.util.Scanner;

class Ex01 {
    public static void main(String[] args) {

        /*
         * Escreva uma classe que Leia 5 nomes e notas de uma turma, calcula e exibe a
         * média das notas da turma e em seguida exibe a
         * relação de nomes cuja nota é superior a esta média. Utilize vetores para
         * armazenar as notas.
         */

        Scanner input = new Scanner(System.in);

        String students[] = new String[5];
        double grades[] = new double[5];
        double grade_average = 0;

        for (int i = 0; i < grades.length; i++) {
            System.out.println("Type the Student name:");
            String student = input.next();

            System.out.println("Type " + student + "'s grade: ");
            double grade = input.nextDouble();

            students[i] = student;
            grades[i] = grade;

            grade_average += grade;
        }
        
        input.close();
        grade_average /= grades.length;

        System.out.println("Average of grades: "+ grade_average);
        for (int i = 0; i < grades.length; i++) {
            if (grades[i] > grade_average) {
                System.out.println(i+" | "+ students[i] + " | " + grades[i]);
            }
        }

    }

}