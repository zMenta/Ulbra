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

    public TvSeries(ArrayList data){
        this.title = data.get(0).toString();
        this.seasons = Integer.parseInt(data.get(1).toString());
        this.number_episodes = Integer.parseInt(data.get(2).toString());
        this.summary = data.get(3).toString();
        this.watched = Boolean.parseBoolean(data.get(4).toString());
        System.out.println("Created " +this.title+ " tv series!");
    }

    public void info(){
        System.out.println("Title: "+this.title);
        System.out.println("Number of Seasons: "+this.seasons);
        System.out.println("Number of Episodes: "+this.number_episodes);
        System.out.println("Summary: "+this.summary);
        System.out.println("Watched: "+this.watched);
    }

}
