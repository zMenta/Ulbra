package Shows;

import java.util.ArrayList;

public class TvSeries {
    String title;
    int seasons;
    int number_episodes;
    String summary;
    Boolean watched;

    public TvSeries(){
        System.out.println("created a tv series!");
    }

    public TvSeries(ArrayList list){
        this.title = list.get(0).toString();
        this.seasons = Integer.parseInt(list.get(1).toString());
        System.out.println("Created " +this.title+ " tv series!");
    }

    public void info(){
        System.out.println("Title: "+this.title);
        System.out.println("Number of Seasons: "+this.seasons);
        System.out.println("Number of Episodes: "+this.number_episodes);
        System.out.println("Summary: "+this.summary);
        System.out.println("Watched: "+this.watched);
    }

    public String getName(){
        return this.title;
    }

}
