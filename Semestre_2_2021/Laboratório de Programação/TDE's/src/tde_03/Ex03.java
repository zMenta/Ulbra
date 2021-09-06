package tde_03;

/*
3 - Crie uma classe que gera um número aleatoriamente (entre 5 e 10) por Math.random.
 Em seguida, faça com que apareça em tela uma senha numérica contendo a mesma quantidade de dígitos correspondentes ao valor aleatório gerado.
  Apresente em tela o número sorteado e a senha.
*/

public class Ex03 {
    public static void main(String[] args) {
        int range = (int)(Math.random() * 6) + 5;
        System.out.println("Generated number: "+range);

        System.out.print("Generated password: ");
        for(int i = 0; i < range; i++) {
            System.out.print((int)(Math.random() * 10));
        }
    }
}
