package tde_05.Ex04;
import java.util.Random;

/*Crie uma classe chamada Senha que contenha um método chamado gerar que retorna uma senha contendo oito caracteres numéricos.
 Faça também outra classe para testar o método.*/

public class Password {
    int password;

    public void Password(int pass){
        password = pass;
    }

    public void generate(){
        Random random = new Random();
        String newPass = "";

        for(int i = 0; i < 8; i++){
            newPass += random.nextInt(10);
        }

        password = Integer.parseInt(newPass);
    }

}
