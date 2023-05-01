Lead myLead = new Lead(LastName = 'Skywalker', Company = 'Galactic Empire');
       System.debug('ld value is : ' + myLead); 
       insert myLead;
       System.debug('ld value After insert is : ' + myLead); 

       Task t1 = new Task();
       t1.WhoId = myLead.Id;
       t1.Priority = 'High';
       t1.ActivityDate = Date.today() + 7 ; // do same thing as addDays(7)
       t1.Subject      = 'Task for Lead from Apex' ;      
       // insert this task into Salesforce
       insert t1;
        System.debug('t1 value is : ' + t1);  