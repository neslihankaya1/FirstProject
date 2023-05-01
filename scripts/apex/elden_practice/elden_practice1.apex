Date birthDay = date.newInstance(2020, 03, 09) ;

System.debug('day of the birthday value is : ' + birthDay.day()); 
System.debug('month of the birthday value is : ' + birthDay.month()); 
System.debug('year of the birthday value is : ' + birthDay.year()); 

System.debug('isleap year : ' + Date.isLeapYear(birthDay.year())); 

System.debug ('months between today and birthday: ' + birthDay.monthsBetween(Date.today())); 

System.debug ('months between today and birthday: ' + birthDay.daysBetween(Date.today())); 