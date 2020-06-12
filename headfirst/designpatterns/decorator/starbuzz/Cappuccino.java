package headfirst.designpatterns.decorator.starbuzz;

public class Cappuccino extends CondimentDecorator {
	Beverage beverage;
 
	public Cappuccino(Beverage beverage) {
		this.beverage = beverage;
	}
 
	public String getDescription() {
		return beverage.getDescription() + ", Cappuccino";
	}
 
	public double cost() {
		return .20 + beverage.cost();
	}
}
