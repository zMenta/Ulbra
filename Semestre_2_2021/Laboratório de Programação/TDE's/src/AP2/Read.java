package AP2;
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
        message("date(DD/MM/YYYY");
        print("Type the day: ");
        int day = input.nextInt();
        print("Type the month: ");
        int month = input.nextInt();
        print("Type the year:");
        String year = input.next();

        String date;
        //Validate date
        if((day >= 0 && day <= 31) && (month >= 1 && month <= 12) && (year.length() <= 4)){
            date = day+"/"+month+"/"+year;
        }else{
            date = null;
        }

        return date;
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
