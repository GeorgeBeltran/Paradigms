package headfirst.designpatterns.singleton;

import java.util.Observable;
import java.util.Observer;

public class NewsDisplay implements Observer, DisplayElement {
    Observable observable;
    private String headline;
    private String priority;
    private String location;

    public NewsDisplay(Observable observable) {
        this.observable = observable;
        observable.addObserver(this);
    }

    public void update(Observable obs, Object arg) {
        if (obs instanceof NewsData) {
            NewsData newsData = (NewsData) obs;
            this.headline = newsData.getHeadline();
            this.priority = newsData.getPriority();
            this.location = newsData.getLocation();
            display();
        }
    }

    public void display() {
        System.out.println("NEWS: " + priority  + " " + headline + " " + location);
    }
}