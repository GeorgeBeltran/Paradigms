package headfirst.designpatterns.factory.pizzaaf;



public class NorthwestIngredientFactory implements PizzaIngredientFactory {
	
	
	public Dough createDough(){

	return new ThinCrustDough();
	}

	public Sauce createSauce(){

	return new HawaiianStyleAlfredoSauce();

	}

	public Cheese createCheese(){

	return new GoudaCheese();

	}

	public Veggies[] createVeggies(){

		Veggies veggies[] = { 
							new Spinach()
							 };
		
	return veggies;

	}

	public Pepperoni createPepperoni(){

	   return new SlicedPepperoni();

	}
	
	public Clams createClam() {
		return new FrozenClams();
	}


    public seafoods createSeafood() {
    	return new MahiMahi();
    }

	

}
