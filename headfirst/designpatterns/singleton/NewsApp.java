package headfirst.designpatterns.singleton;

public class NewsApp {
    public static void main(String[] args) {
        NewsData newsData = new NewsData();
        NewsDisplay newsDisplay = new NewsDisplay(newsData);

        newsData.setNews("Breaking News!", "Murder", "in south LA");
        newsData.setNews("Just In!", "Police surrounding", "the Bank of America");
        newsData.setNews("We just got word!", "Bank robbers captured in", "Downtown LA");
    }
}