package headfirst.designpatterns.strategy;

public class LoudmouthDuck extends Duck{
	
	    public QuackBehavior qb;

	    public LoudmouthDuck(QuackBehavior qb) {
	        super(qb);
	        this.qb = qb;
	    }

	    public void quack() {
	        this.qb.quack();
	    }

	   
}
