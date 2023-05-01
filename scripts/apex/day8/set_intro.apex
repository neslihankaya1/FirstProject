// Create a set of String to store 10 items with , single letter for each item

Set<String> letters 
    = new Set<String>{'A','A','A','B','B','B','C','C','C','D'}; 

// Print out the entire Set 
System.debug(letters) ; 
// print out the size 
System.debug('unique letter counts : ' + letters.size() ) ; 
// use for each loop to print out each items 

for(String eachLetter   : letters ){
    System.debug(eachLetter); 
}

