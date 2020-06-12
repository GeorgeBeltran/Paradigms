package headfirst.designpatterns.strategy;

public class MiniDuckSimulator1 {
 
	public static void main(String[] args) {
 
		Duck mallard = new MallardDuck();
		mallard.performQuack();
	
   
		Duck model = new ModelDuck();
		

	}
}
