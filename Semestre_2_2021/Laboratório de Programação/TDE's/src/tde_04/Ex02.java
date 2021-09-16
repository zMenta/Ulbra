package tde_04;

/*Já que todos os strings são objetos de tipo String, mostre como chamar os métodos length( ) e charAt( ) neste literal de string: “I like Java”.*/

public class Ex02 {
    public static void main(String[] args) {

        String string = "I like Java";

        System.out.println("Base string: "+string);
        System.out.println(".length() -> " + string.length());
        System.out.println(".charAt(4) -> " + string.charAt(4));


    }
}
