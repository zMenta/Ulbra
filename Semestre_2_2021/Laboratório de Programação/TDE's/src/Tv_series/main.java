package Tv_series;

import Tv_series.Tv_series;

public class main {
    public static void main(String[] args) {
        Tv_series series = new Tv_series("CrabPong");
        series.info();
        series.seasons = 5;
        series.info();
    }
}
