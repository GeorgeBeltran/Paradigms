package headfirst.designpatterns.factory.pizzaaf;


public class PizzaTestDrive {
 
		public static void main(String[] args) {

		       
		       PizzaStore nw = new NorthwestPizzaStore();

		       
	      
		       Pizza pizza = nw.orderPizza("MahiMahi");
		       
		       System.out.print("Bill ordered a " + pizza + "\n");

		   }
	
}
