package headfirst.designpatterns.singleton;

import java.util.Observable;
import java.util.Observer;

public class NewsData extends Observable {
    private String headline;
    private String priority;
    private String location;

    public NewsData() {
    }

    public void newsChanged() {
        setChanged();
        notifyObservers();
    }

    public void setNews(String priority, String headline, String location) {
        this.priority = priority;
        this.headline = headline;
        this.location = location;
        newsChanged();
    }

    public String getHeadline() {
        return headline;
    }

    public String getPriority() {
        return priority;
    }

    public String getLocation() {
        return location;
    }
}