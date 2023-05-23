//List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
//System.debug('myOpps.size()  value is : ' + myOpps.size() );

//delete [Select Id From Lead WHERE CreatedDate = TODAY] ; 

OverdueOppProcessor ovp = new OverdueOppProcessor(); 
//Database.executeBatch(ovp, 150);  // 500/150  150-150-150-50
//Database.executeBatch(ovp, 200); 
Database.executeBatch(ovp, 100); 

//delete [Select Id from Opportunity Where Name like 'Batch Opp%'] ; 


//delete [Select Id from Lead Where Name like 'JON SNOW%'] ; 
