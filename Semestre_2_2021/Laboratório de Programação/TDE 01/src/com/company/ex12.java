package com.company;
import java.util.Scanner;

public class ex12 {
    public static void main(String[] args) {
        // Calculate the weight if someone is in the moon.

        Scanner input = new Scanner(System.in);
        float w;

        System.out.println("Type your weight(mass) in kg:");
        w = input.nextFloat();

        System.out.println("Your weight on the moon is "+w*0.17);
    }
}
