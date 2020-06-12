package headfirst.designpatterns.decorator.starbuzz;

public class Americano extends CondimentDecorator {
	Beverage beverage;
 
	public Americano(Beverage beverage) {
		this.beverage = beverage;
	}
 
	public String getDescription() {
		return beverage.getDescription() + ", Americano";
	}
 
	public double cost() {
		return .30 + beverage.cost();
	}
}
