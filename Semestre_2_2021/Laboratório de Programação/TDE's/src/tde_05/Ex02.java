package tde_05;

/*Crie uma classe chamada Contagem que contenha quatro métodos com o nome “contar” utilizando o conceito da sobrecarga.
A assinatura e função de cada método aparecem descritas na tabela a seguir. Faça também outra classe para testar o método.*/

public class Ex02 {

    public static void count(){
        for(int i = 1; i <= 10; i++){
            System.out.print(i);
            if( i < 10){
                System.out.print(", ");
            }else{
                System.out.println();
            }
        }
    }

    public static  void count(int end){
        for(int i = 1; i <= end; i++){
            System.out.print(i);
            if( i < end){
                System.out.print(", ");
            }else{
                System.out.println();
            }
        }
    }

    public static void count(int start, int end){
        for(int i = start; i <= end; i++){
            System.out.print(i);
            if( i < end){
                System.out.print(", ");
            }else{
                System.out.println();
            }
        }
    }

    public static void count(int start, int end, int pause) throws InterruptedException {
        pause *= 1000;
        for(int i = start; i <= end; i++){
            System.out.print(i);
            if( i < end){
                System.out.print(", ");
            }else{
                System.out.println();
            }
            Thread.sleep(pause);
        }
    }



    public static void main(String[] args) throws InterruptedException {

        count();
        count(15);
        count(340,347);
        count(100,110,1);


    }
}
