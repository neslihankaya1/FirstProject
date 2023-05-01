List<Integer> numberList = new List<Integer>{17,69,22,66,31};

System.debug('numberList value is : ' + numberList); 

// add(value) 
// add the value at the end of the list 

numberList.add(100) ; 

// add(index, value) 
/**
   index : where do you want to add the value (which index location)
   value : what value do you want to add 
 */
// add value 999 into index location 0 
numberList.add(0, 999); 
System.debug('numberList value is : ' + numberList); 
// add value 888 into index location 2
numberList.add(2, 888) ;  
System.debug('numberList value is : ' + numberList); 

// set(index, newValueYouWantToUpdate)
/*
   index : where do you want to update the value (which index location)
   newValueYouWantToUpdate : what's the value

/*numberList.set(0, 777) ; 
System.debug('numberList value is : ' + numberList); 

// remove(index) : remove the value at that index 

// remove the item at index number 2 
numberList.remove(2) ; 
System.debug('numberList value is : ' + numberList); 

// isEmpty()  // return true if the size > 0 false if 0 
Boolean lstHasNumbers =  numberList.isEmpty() ; 
System.debug('lstHasNumbers value is : ' + lstHasNumbers); */

Boolean has66 = null ; 

for(Integer each : numberList) {
    //System.debug('Current value : ' + each);
    if( each==66 ){
        System.debug('FOUND IT'); 
        has66 = true ; 
        break; 
    }
}

System.debug('has66 value is : ' + has66); 
