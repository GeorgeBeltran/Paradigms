package headfirst.designpatterns.factory.pizzaaf;


public class NorthWestPizza extends Pizza{
	PizzaIngredientFactory ingredientFactory;
	
	public NorthWestPizza(PizzaIngredientFactory ingredientFactory) {
		this.ingredientFactory = ingredientFactory;
	}
	
	void prepare() {
		System.out.println("Preparing " + name);
		dough = ingredientFactory.createDough();
		sauce = ingredientFactory.createSauce();
		seafood = ingredientFactory.createSeafood();
		cheese = ingredientFactory.createCheese();
	}

}
