package tde_04;
import java.util.Scanner;

/*
Usando um array unidimensional de 10 elementos do tipo String, faça uma classe que simule a ocupação de um estacionamento de veículos.
 Considere que a posição do array corresponde ao número da vaga e para cada vaga é armazenada a placa do veículo que está estacionado.
  Sua classe deve conter um laço de repetição simulando um menu que controle a entrada e a saída dos veículos com as opções:
   1-Entrada, 2-Saída e 3-Listar situação atual e 4-Encerrar o programa. Se o usuário escolher 1, solicite o número da vaga e a placa do veículo;
   se escolher 2, solicite o número da vaga que será liberada e armazene o valor branco na posição correspondente ao array;
   se escolher 3, liste a situação atual apresentando em tela todos os elementos do array;
   quando for 4, encerre o laço e o programa.
*/

public class Ex09 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String[] spaces = new String[10];
        int opt = 0;

        final int occupySpace = 1;
        final int clearSpace = 2;
        final int showSpaces = 3;
        final int exit = 4;

        for(int i = 0; i < spaces.length; i++){
            spaces[i] = "'vacant'";
        }

        System.out.println("WELCOME TO PARKING SPACES CONTROL SYSTEM");
        do{
            System.out.println("1 - Register occupied space");
            System.out.println("2 - Register vacant space");
            System.out.println("3 - Show the parking spaces situation");
            System.out.println("4 - Exit the parking spaces control system");
            opt = input.nextInt();

            System.out.println("===============================================");
            if(opt == occupySpace){
                System.out.println("Type the vehicle plate that will occupy the space: ");
                String plate = input.next();
                System.out.println("Type the space that is going to be occupied: ");
                spaces[input.nextInt()] = plate;
            }else

            if(opt == clearSpace){
                System.out.println("Type the space that is going to be vacant: ");
                spaces[input.nextInt()] = "'vacant'";
            }else

            if(opt == showSpaces){
                System.out.print("Parking Spaces occupied by vehicle plate: ");
                for(int i = 0; i < spaces.length; i++){
                    System.out.println("Space "+i+": " + spaces[i]);
                }
            }else

            if(opt == exit){
                System.out.println("BYE");
                break;
            }

        }while(opt != 4);

    }
}
