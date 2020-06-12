package headfirst.designpatterns.strategy;

public class DuckPond {
	 public static void main(String[] args) {  //THIS IS WHERE YOU RUN IT!!!!!!
	        QuackBehavior shout = new ShoutingQuack();
	        QuackBehavior normal = new NormalQuack();

	        // create duck
	        Duck MallardDuck = new Duck(normal);
	        
	        System.out.println("MallardDuck");


	        // normal Quack
	        MallardDuck.quack();

	        // Shout Quack
	        MallardDuck = new Duck(shout);
	        MallardDuck.quack();

	        // LoudmouthDuck Shout Quack
	        System.out.println("\nLoud mouth duck");
	        LoudmouthDuck myDuck = new LoudmouthDuck(shout);
	        myDuck.quack();
	    }
}
