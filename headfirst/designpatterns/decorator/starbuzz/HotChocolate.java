package headfirst.designpatterns.decorator.starbuzz;

public class HotChocolate extends CondimentDecorator {
	Beverage beverage;
 
	public HotChocolate(Beverage beverage) {
		this.beverage = beverage;
	}
 
	public String getDescription() {
		return beverage.getDescription() + ", Hot Chocolate";
	}
 
	public double cost() {
		return .25 + beverage.cost();
	}
}
