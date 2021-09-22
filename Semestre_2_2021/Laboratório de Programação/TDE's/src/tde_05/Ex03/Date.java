package tde_05.Ex03;

/*Crie uma classe chamada Data que contenha os métodos getDia, getMes e getAno. Esses métodos recebem uma data em formato texto no padrão “dd/mm/aaaa” e
retornam um número inteiro correspondente ao dia, mês e ano existentes na data fornecida.
 Caso a data enviada esteja fora do padrão, os métodos, deve retornar o valor zero. Faça também outra classe para testar o método.*/

public class Date {
    String date;
    boolean rightFormat = true;

    public Date(String thisDate){
        date = thisDate;

        if(date.length() != 10){
            System.out.println("\n\t\t--Invalid input. Make sure it's dd/mm/yyyy format.--");
            rightFormat = false;
        }
    }


    public String getDay(){
        String day = "";

        if(rightFormat == true) {
            for (int i = 0; i < 2; i++) {
                day += date.charAt(i);
            }
            return day;
        }else{
            return "0";
        }
    }

    public String getMonth(){
        String month = "";

        if(rightFormat == true){
            for(int i = 3; i < 5; i++){
                month += date.charAt(i);
            }
            return month;
        }else{
            return "0";
        }
    }

    public String getYear(){
        String year = "";
        if(rightFormat == true){
            for(int i = 6; i < 10; i++){
                year += date.charAt(i);
            }
            return year;
        }else{
            return "0";
        }
    }





}
