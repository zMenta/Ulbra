public class Atividade01 {
    public static void main(String[] args) {

        float[] temperatures = {20,30,28,17,20,13,35};
        float average_temperatures = 0 ;

        for(int i = 0; i < temperatures.length; i++){
            // System.out.println(temperatures[i]);
            average_temperatures += temperatures[i];
        }
        
        average_temperatures /= temperatures.length;
        
        System.out.println("Temperature average: " + average_temperatures);
        for (int i = 0; i < temperatures.length; i++) {
            if(average_temperatures <= temperatures[i]){
                System.out.println( i + " | Temperature: " + temperatures[i]);
            }
        }
    }
}
