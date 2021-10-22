package AP2;
import javax.swing.*;
import java.util.Scanner;

public class Read {
    Scanner input = new Scanner(System.in);

    public void message(String dataTypeName){
        System.out.println("Type an " + dataTypeName);
    }

    public void print(String string){
        System.out.println(string);
    }

    // INT METHODS
    public int writeInt(){
        message("integer");
        int value = input.nextInt();

        return value;
    }

    public int writeInt(String customMessage){
        print(customMessage);
        int value = input.nextInt();

        return value;
    }

    public int writeInt(String customMessage, boolean activateJOptionPane){
        if(activateJOptionPane == false){
            return writeInt(customMessage);
        }else{
            String value = JOptionPane.showInputDialog(customMessage);
            return Integer.parseInt(value);
        }
    }

    //FLOAT METHODS
    public float writeFloat(){
        message("float");
        float value = input.nextFloat();

        return value;
    }

    public float writeFloat(String customMessage){
        print(customMessage);
        float value = input.nextFloat();

        return value;
    }

    public float writeFloat(String customMessage, boolean activateJOptionPane){
        if(activateJOptionPane == false){
            return writeFloat(customMessage);
        }else{
            String value = JOptionPane.showInputDialog(customMessage);
            return Float.parseFloat(value);
        }
    }


    //DOUBLE METHODS
    public double writeDouble(){
        message("double");
        double value = input.nextDouble();

        return value;
    }

    public double writeDouble(String customMessage){
        print(customMessage);
        double value = input.nextDouble();

        return value;
    }

    public double writeDouble(String customMessage, boolean activateJOptionPane){
        if(activateJOptionPane == false){
            return writeDouble(customMessage);
        }else{
            String value = JOptionPane.showInputDialog(customMessage);
            return Double.parseDouble(value);
        }
    }


    //STRING METHODS
    public String writeString(){
        message("string");
        String value = input.next();

        return value;
    }

    public String writeString(String customMessage){
        print(customMessage);
        String value = input.next();

        return value;
    }

    public String writeString(String customMessage, boolean activateJOptionPane){
        if(activateJOptionPane == false){
            return writeString(customMessage);
        }else{
            return JOptionPane.showInputDialog(customMessage);
        }
    }


    //CHAR METHODS
    public char writeChar(){
        message("char");
        char value = input.next().charAt(0);

        return value;
    }

    public char writeChar(String customMessage){
        print(customMessage);
        char value = input.next().charAt(0);

        return value;
    }

    public char writeChar(String customMessage, boolean activateJOptionPane){
        if(activateJOptionPane == false){
            return writeChar(customMessage);
        }else{
            return JOptionPane.showInputDialog(customMessage).charAt(0);
        }
    }

    
    // Ex) A
    public String validateEmail(){
        print("Type an email to be validated: ");
        String email = input.next();

        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z" + "A-Z]{2,7}$";
        boolean validEmail = email.matches(emailRegex);

        if(validEmail == true){
            return email;
        }else {
            return null;
        }
    }

    // Ex) B
    public String validatePhoneNumber(){
        message("phone number(DDD-XXXXXXXXX)");
        String phoneNumber = input.next();
        final int phoneNumberLenght = 13;

        if( phoneNumber.charAt(3) == '-' && phoneNumber.length() == phoneNumberLenght){
            return phoneNumber;
        }else{
            return null;
        }
    }

    // Ex) C
    public String validateDate(){
        message("date(DD/MM/YYYY)");
        String date = input.next();
        final int dateLenght = 10;

        if(date.length() == dateLenght && date.charAt(2) == '/' && date.charAt(5) == '/'){
            return date;
        }

        return null;
    }

    // Ex) D
    public String changeDate(){
        message("date(DD/MM/YYYY)");
        String date = input.next();
        String changedDate = "";

        changedDate += date.charAt(3);
        changedDate += date.charAt(4);
        changedDate += "/";
        changedDate += date.charAt(0);
        changedDate += date.charAt(1);
        changedDate += "/";

        for(int i = 6; i < 10; i++){
            changedDate += date.charAt(i);
        }

        return changedDate;
    }

    // Ex) E
    public boolean validadeNumber(){
        message("data value");
        String value = input.next();

        try{
            Float.parseFloat(value);
            return true;
        }catch(NumberFormatException e){
            return false;
        }


    }


}
