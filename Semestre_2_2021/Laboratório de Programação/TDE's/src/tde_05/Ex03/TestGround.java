package tde_05.Ex03;

/*Crie uma classe chamada Data que contenha os métodos getDia, getMes e getAno. Esses métodos recebem uma data em formato texto no padrão “dd/mm/aaaa” e
retornam um número inteiro correspondente ao dia, mês e ano existentes na data fornecida.
 Caso a data enviada esteja fora do padrão, os métodos, deve retornar o valor zero. Faça também outra classe para testar o método.*/

public class TestGround {
    public static void main(String[] args) {

        Date date = new Date("14/05/2014");

        System.out.println(date.date);
        System.out.println(date.getDay());
        System.out.println(date.getMonth());
        System.out.println(date.getYear());
    }
}
