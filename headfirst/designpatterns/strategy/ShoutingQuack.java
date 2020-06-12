package headfirst.designpatterns.strategy;

public class ShoutingQuack implements QuackBehavior{
	
	@Override
	public void quack() {
		System.out.println("QUACK, QUACK!");
	}

}
