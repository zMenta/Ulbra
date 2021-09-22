package tde_05;

/*Faça uma classe chamada Mes que possua um método chamado getMesPorExtenso que recebe um número inteiro,
 referente ao mês do ano, um código referente ao idioma (1 para português e 2 para inglês) e retorne o mês por extenso. A tabela a seguir ilustra alguns exemplos.
  Faça também outra classe para testar o método.*/

public class Ex01 {

    public static String getMonth(int month, int language){
        int portuguese = 1;
        int english = 2;
        month -= 1;
        String[] monthEnglish = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        String[] monthPortuguese = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};

        if(language == english){
            return monthEnglish[month];
        }

        if(language == portuguese){
            return monthPortuguese[month];
        }

        return "Incorrect";
    }

    public static void main(String[] args) {

        String month = getMonth(4,2);

        System.out.println(month);
    }
}
