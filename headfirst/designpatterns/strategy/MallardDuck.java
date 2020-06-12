package headfirst.designpatterns.strategy;

public class MallardDuck extends Duck {

	public MallardDuck() {

		qb = new Quack();
	}

	public void display() {
		System.out.println("I'm a real Mallard duck");
	}
}
