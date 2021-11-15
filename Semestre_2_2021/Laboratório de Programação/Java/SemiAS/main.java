package Shows;
import java.util.ArrayList;
import java.util.Scanner;

public class main {

    public static void main(String[] args) {
        ArrayList data = new ArrayList();
        ArrayList<TvSeries> series = new ArrayList();
        Scanner input = new Scanner(System.in);
        int choice = 0;

        do{
            data.clear();
            System.out.println("Select a number:");
            System.out.println("1- Add a show | 2- List Shows | 5 - Exit");
            choice = input.nextInt();

            switch(choice) {
                case 1:
                    System.out.println("Type the name of the show: ");
                    data.add(input.next());
                    System.out.println("Type the number of seasons: ");
                    data.add(input.nextInt());
                    TvSeries show = new TvSeries(data);
                    series.add(show);
                    break;

                case 2:
                    for(int i = 0; i < series.size(); i++){
                        System.out.println(i + " | "+ series.get(i).title);
                        break;
                    }
                
                case 5:
                    System.out.println("End");
                    break;
            }
            
            
        }while(choice != 5);
        
        System.out.println(series.get(0).title);
    }
}
