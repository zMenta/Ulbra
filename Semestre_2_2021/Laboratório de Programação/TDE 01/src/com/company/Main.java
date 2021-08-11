package com.company;
import java.util.Scanner; // Importing Scanner

public class Main {

    public static void main(String[] args) {
        int num;

        Scanner input = new Scanner(System.in);

        System.out.println("Type an integer number:");
        num = input.nextInt();

        System.out.println("The typed number is: "+num);


    }
}
