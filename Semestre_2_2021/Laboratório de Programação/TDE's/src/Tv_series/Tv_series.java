package Tv_series;

public class Tv_series {
    String title;
    int seasons;
    int number_episodes;
    String summary;
    Boolean watched;

    public Tv_series(){
        System.out.println("created a tv series!");
    }

    public Tv_series(String title){
        this.title = title;
        System.out.println("created " +this.title+ " tv series");
    }

    public Tv_series(String title, int seasons, int number_episodes, String summary, Boolean watched){
        this.title = title;
        this.seasons = seasons;
        this.number_episodes = number_episodes;
        this.summary = summary;
        this.watched = watched;
        System.out.println("created " +this.title+ " tv series");
    }

    public void info(){
        System.out.println("Title: "+this.title);
        System.out.println("Number of Seasons: "+this.seasons);
        System.out.println("Number of Episodes: "+this.number_episodes);
        System.out.println("Summary: "+this.summary);
        System.out.println("Watched: "+this.watched);
    }

}
