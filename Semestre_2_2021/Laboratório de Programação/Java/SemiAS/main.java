package Shows;
import java.util.ArrayList;
import java.util.Scanner;

public class main {

    static void printLine(){
        System.out.println("----------------------------------------------------------------------");
    }

    public static void main(String[] args) {
        ArrayList<TvSeries> series = new ArrayList();
        ArrayList data = new ArrayList();
        Scanner input = new Scanner(System.in);
        int choice = 0;

        do{
            data.clear();
            System.out.println("Select a number:");
            System.out.println("1- Add a show | 2- List Shows | 3- Remove a show | 4- Total of registered series | 5 - Exit");
            choice = input.nextInt();

            switch(choice) {
                //Add Shows
                case 1:
                    printLine();    
                    System.out.println("Type the name of the show: ");
                    data.add(input.next());
                    System.out.println("Type the number of seasons: ");
                    data.add(input.nextInt());
                    TvSeries show = new TvSeries(data);
                    series.add(show);
                    printLine();    
                    break;

                //List Shows
                case 2:
                    printLine();    
                    for(int i = 0; i < series.size(); i++){
                        System.out.println(i + " | "+ series.get(i).title);
                    }
                    if(series.size() == 0){
                        System.out.println("There are no registered shows.");
                    }
                    printLine();    
                    break;

                //Remove show
                case 3:
                    printLine();    
                    System.out.println("Type the show index that you want to remove: ");
                    int index = input.nextInt();
                    series.remove(index);
                    System.out.println("Removed show of index "+index);
                    printLine();
                    break;

                //Total of series
                case 4:
                    printLine();
                    System.out.println("Total of registered series: "+series.size());
                    printLine();
                    break;
                    
                    // Exit
                    case 5:
                    printLine();
                    System.out.println("End");
                    break;
            }
            
            
        }while(choice != 5);
        
    }
}
