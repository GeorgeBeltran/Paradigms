package headfirst.designpatterns.decorator.starbuzz;

public class Latte extends CondimentDecorator {
	Beverage beverage;
 
	public Latte(Beverage beverage) {
		this.beverage = beverage;
	}
 
	public String getDescription() {
		return beverage.getDescription() + ", Latte";
	}
 
	public double cost() {
		return .10 + beverage.cost();
	}
}
