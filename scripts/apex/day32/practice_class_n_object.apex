// instantiate the CoffeeMaker
// create an instance of the CoffeeMaker
// create CoffeeMaker variable assign CoffeeMaker object
// all of the above are talking about same thing

CoffeeMaker c1 = new CoffeeMaker();
c1.brand = 'Nespresso';
c1.capacity = 9;
System.debug('c1 value is : ' + c1);

c1.makeCoffee();
//c1.makeCoffee();

c1.setTimer(5);
c1.setTimer(100);

c1.clean();
c1.addWater(50);
c1.addWater(70);

c1.addFlavor('Vanilla Mocha');
c1.addFlavor('caramel');
c1.addFlavor('Hazelnut');

c1.setStrength('High', 3) ; 
c1.setStrength('Intense', 5) ; 