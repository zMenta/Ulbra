package Tv_series;

import java.util.Scanner;
import java.util.ArrayList;

public class main {
    public static void main(String[] args) {
        ArrayList list = new ArrayList();
        Scanner input = new Scanner(System.in);
        int choice = 0;

        do {
            System.out.println("Select a number:");
            System.out.println("1- Add a show. 5 - Exit");
            choice = input.nextInt();

            switch (choice) {
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


        } while (choice != 5);

    }
}
