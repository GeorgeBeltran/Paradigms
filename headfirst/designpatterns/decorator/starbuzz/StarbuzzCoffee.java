package headfirst.designpatterns.decorator.starbuzz;

public class StarbuzzCoffee {
 
	public static void main(String args[]) {
		Beverage beverage = new Espresso();
		System.out.println(beverage.getDescription() 
				+ " $" + beverage.cost());
 
		Beverage beverage2 = new DarkRoast();
		beverage2 = new Mocha(beverage2);
		beverage2 = new Cappuccino(beverage2);
		beverage2 = new Whip(beverage2);
		beverage2 = new Latte(beverage2);
		System.out.println(beverage2.getDescription() 
				+ " $" + beverage2.cost());
 
		Beverage beverage3 = new HouseBlend();
		beverage3 = new Soy(beverage3);
		beverage3 = new HotChocolate(beverage3);
		beverage3 = new Macchiato(beverage3);
		System.out.println(beverage3.getDescription() 
				+ " $" + beverage3.cost());
		
		Beverage beverage4 = new HouseBlend();
		beverage4 = new Soy(beverage4);
		beverage4 = new Whip(beverage4);
		beverage4 = new Americano(beverage4);

		System.out.println(beverage4.getDescription() + " $" + beverage4.cost());
	
		
		Beverage beverage5 = new Decaf();
		beverage5 = new Americano(beverage5);
		beverage5 = new Latte(beverage5);
		beverage5 = new HotChocolate(beverage5);
		beverage5 = new Macchiato(beverage5);
		beverage5 = new Cappuccino(beverage5);
		System.out.println(beverage5.getDescription() + " $" + beverage5.cost());

	}
}
