package Shows;
import java.util.ArrayList;
import java.util.Scanner;

import javax.swing.plaf.synth.SynthStyleFactory;

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
            System.out.println("1- Add a show | 2- List Shows | 3- Remove a show | 4- Total of registered series | 5- Filter by watched |6- Search serie by name | 7- Exit");
            choice = input.nextInt();

            switch(choice) {
                //Add Shows
                case 1:
                    printLine();    
                    System.out.println("Type the name of the show: ");
                    data.add(input.next());
                    System.out.println("Type the number of seasons: ");
                    data.add(input.nextInt());
                    System.out.println("Type the total number of episodes: ");
                    data.add(input.nextInt());
                    System.out.println("Type summary of the show: ");
                    data.add(input.next());
                    System.out.println("Is watched: ");
                    data.add(input.nextBoolean());
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
                    
                //Filter by watched
                case 5:
                    printLine();
                    System.out.println("1- Sort by watched | 2- Sort by NOT watched");
                    int subChoice = input.nextInt();
                    printLine();
                    for(int i = 0; i < series.size(); i++){
                        //watched
                        if(subChoice == 1 && series.get(i).watched){
                            System.out.println(i + " | "+ series.get(i).title + " | Watched: "+series.get(i).watched);
                        }

                        //no watched
                        if(subChoice == 2 && !series.get(i).watched){
                            System.out.println(i + " | "+ series.get(i).title + " | Watched: "+series.get(i).watched);
                        }
                    }
                    printLine();
                    break;

                //Search by Name
                case 6:
                    printLine();
                    System.out.println("Type the name of the show that you want to search: ");
                    String name = input.next();
                    boolean showFound = false;
                    for(int i = 0; i < series.size(); i++){
                        if(series.get(i).title.equals(name)){
                            printLine();
                            System.out.println("Show Found!");
                            series.get(i).info();
                            showFound = true;
                        }
                    }
                    
                    if(!showFound){
                        System.out.println("Not found.");
                    }

                    printLine();
                    break;
                // Exit
                case 7:
                    printLine();
                    System.out.println("\t\t\tEnd");
                    printLine();
                    break;
            }
            
            
        }while(choice != 7);
        
    }
}
