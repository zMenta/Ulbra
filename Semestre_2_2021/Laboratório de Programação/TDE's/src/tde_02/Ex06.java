package tde_02;
import java.util.ArrayList;
import java.util.Scanner;

/*Na área da eletrônica, em um circuito em série temos que a resistência equivalente (total) desse circuito é obtida mediante a soma de todas as
resistências existentes (RE = r1 + r2 + ... + rn). Faça uma classe que receba o valor de quatro resistências ligadas em série,
 calcule e mostre a resistência equivalente, a maior e a menor resistência.*/


public class Ex06 {

    public static void main(String[] args) {

        //Scanner input = new Scanner(System.in);
        Scanner input;
        ArrayList<Integer> resistances;

        input = new Scanner(System.in);
        resistances = new ArrayList<Integer>();

        int equivalentResistance = 0;
        int lowestResistance = 0;
        int highestResistance = 0;
        int typedResistance;

        for(int i = 0; i < 4; i++){
            System.out.println("Please type the "+(i+1)+"th resistance:");
            typedResistance = input.nextInt();
            resistances.add(typedResistance);

            equivalentResistance += typedResistance;

            if(i == 0){
                lowestResistance = resistances.set(i,typedResistance);
                highestResistance = resistances.set(i,typedResistance);
            }else {
                if (typedResistance < lowestResistance) {
                    lowestResistance = typedResistance;
                }

                if (typedResistance > highestResistance){
                    highestResistance = typedResistance;
                }
            }
        }

        equivalentResistance = equivalentResistance / resistances.size();

        System.out.println(resistances);

        System.out.println(resistances.get(2));
        System.out.println(resistances.get(0));



    }
}
