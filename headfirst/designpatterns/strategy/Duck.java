package headfirst.designpatterns.strategy;
	
public class Duck {
	   public QuackBehavior qb;

	    public Duck(QuackBehavior qb) {
	       
	        this.qb = qb;
	    }

	    public void quack() {
	        this.qb.quack();
	    }

	   
}
