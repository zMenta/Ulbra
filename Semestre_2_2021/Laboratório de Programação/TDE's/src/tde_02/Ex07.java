package tde_02;
import java.util.Objects;
import java.util.Scanner;

/*Faça uma classe que solicite login e senha, simulando o acesso a um sistema. Considere que os conteúdos de login e senha originais são iguais a “java8”.
 O usuário deverá fornecer login e senha e você irá compará-los com os conteúdos originais. O usuário tem três chances para digitar corretamente os dados de
 login e senha. Para cada tentativa incorreta deve aparecer uma mensagem alertando o erro e apresentando a quantidade de tentativas que ainda restam.
 */

public class Ex07 {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        // User = password = "java8"

        final int TRIES = 3;

        for(int i = 1; i < TRIES+1; i++){
            System.out.println("Please type the login: ");
            String login = input.next();
            System.out.println("Please type the password: ");
            String password = input.next();

            //Login and password verifiers
            if(Objects.equals(login ,"java8") & Objects.equals(password, "java8")){
                System.out.println("Successful login!!");
                break;
            }else{
                System.out.println("Invalid login or password. Please try again.");
                System.out.println("---------------------------------------------");
                System.out.println("You have "+(TRIES - i)+" tries left.");
            }
        }

    }
}
