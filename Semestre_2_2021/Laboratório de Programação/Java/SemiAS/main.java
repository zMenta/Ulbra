package Shows;

import java.util.ArrayList;
import java.util.Scanner;

public class main {

    static void register(){
        ArrayList list = new ArrayList();
        Scanner input = new Scanner(System.in);
        System.out.println("Type the name of the show: ");
        list.add(input.nextLine());
        System.out.println("Type the number of seasons: ");
        list.add(input.nextInt());
    }
    public static void main(String[] args) {
        ArrayList list = new ArrayList();
        Scanner input = new Scanner(System.in);
        int choice = 0;


        register();

        do{
            System.out.println("Select a number:");
            System.out.println("1- Add a show. 5 - Exit");
            choice = input.nextInt();

            switch(choice) {
                case 1:
                    System.out.println("Type the name of the show: ");
                    list.add(input.nextLine());
                    System.out.println("Type the number of seasons: ");
                    list.add(input.nextInt());
                    break;
                
                case 5:
                    System.out.println("T");
                    break;
            }

            
        }while(choice != 5);
        
        TvSeries show = new TvSeries(list);
        
        System.out.println("END");
    }
}
