System.debug('------Equality------------');
System.debug('is message == Hello World ' +    ( message=='Hello World' )       ); //true
System.debug('is message == hello world ' +    ( message=='hello world' )       ); //true

// equals(anotherString) method for checking equality in case sensitive manner

System.debug('message.equals(\'Hello World\') value is : ' 
                                    + message.equals('Hello World')); 

System.debug('message.equals(\'hello world\') value is : ' 
                                    + message.equals('hello world')); 

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.
This is literally the method version of == 
 */
System.debug('message.equalsIgnoreCase(\'hello world\') : ' 
                            + message.equalsIgnoreCase('hello world') ); 


/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 

String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str); 