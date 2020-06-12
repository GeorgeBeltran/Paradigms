package headfirst.designpatterns.decorator.starbuzz;

public class Macchiato extends CondimentDecorator {
	Beverage beverage;
 
	public Macchiato(Beverage beverage) {
		this.beverage = beverage;
	}
 
	public String getDescription() {
		return beverage.getDescription() + ", Macchiato";
	}
 
	public double cost() {
		return .10 + beverage.cost();
	}
}
