/**

 */
// Create a Contact variable and initializing it's value
 Contact c1 = new Contact(); 
 // assigning the field values
 c1.FirstName = 'Zeynep' ; 
 c1.LastName  = 'Yildiz' ; 
 c1.Email     = 'zeynep@force.com'; 
// printing 
 System.debug('c1 value is : ' + c1); 

// or you can directly provide field value inside ()
// while assigning the value to the variable 
 Contact c2 = new Contact(FirstName='Gulya', LastName='K');
 System.debug('c2 value is : ' + c2);  