List<Integer> numLst = new List<Integer>{ 19, 1, 23, 7, 11, 99 };

 // get the element at certain index using  get method 

// get the first element and store it in a variable 
 Integer item1 = numLst.get(0) ; 
 System.debug('first item value ' + item1) ;   

 // directly print out the second item value using get method 
  System.debug('second item value ' +  numLst.get(1)      ); 

  System.debug(  numLst.get(2)  ); 
  System.debug(  numLst.get(3)  ); 
  System.debug(  numLst.get(4)  ); 
  System.debug(  numLst.get(5)  ); 

  system.debug(numLst) ;

System.debug('----------------------------'); 
// iterate over all the elements in the loop without for each loop 

for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}
