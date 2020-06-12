package headfirst.designpatterns.strategy;

public class NormalQuack implements QuackBehavior {

    @Override
    public void quack() {
        System.out.println("Quack");
    }
}
