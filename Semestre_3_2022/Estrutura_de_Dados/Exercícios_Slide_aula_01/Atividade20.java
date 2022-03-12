import java.util.Scanner;

public class Atividade20 {
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        double[] list = {12.5,80,1.8,22,36};
        int choice = 0;

        do {
            System.out.println("0 - Exit | 1 - Show list | 2- Show list in inverted order");
            choice = input.nextInt();
            
            if(choice == 1){
                for (int i = 0; i < list.length; i++) {
                    System.out.print( list[i] + ", ");
                }
                System.out.println();
            }
            
            if (choice == 2) {
                for (int i = list.length-1; i != -1; i--) {
                    System.out.print( list[i] + ", ");
                }
                System.out.println();
            }

        } while (choice != 0);

    }
}
