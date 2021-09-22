package tde_05.Ex04;

/*Crie uma classe chamada Senha que contenha um método chamado gerar que retorna uma senha contendo oito caracteres numéricos.
Faça também outra classe para testar o método.*/

public class TestGround {
    public static void main(String[] args) {
        Password password = new Password();

        password.generate();
        System.out.println(password.password);
    }
}
