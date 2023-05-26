public class TriggerHandlerClass {

    public static void beforeInsert(List<Account> newList){  //pass the list in the paramters, placeholer for trigger.new
        
//BEFORE INSERT EXAMPLE
//EX: if the account Industry is not null and has media as a value the populate the Rating as Hot
//--------------------------
    
    for(Account each : newList){
        
        if(each.Industry != null && each.Industry == 'Media'){ //going though each record in Trigger.new
            each.Description = 'From Handler Class';
            each.rating = 'Hot';
        }
        
    }
    
    
    
        
        
        
        
        
        
    }
    
    public static void afterInsert(List<Account> newList){ //pass the list in the paramters, placeholer for trigger.new
//AFTER INSERT EXAMPLE
// EX: when an account is created, create a related opportunity as well.
//-------------------------------------------------------------------------
   
        List<Opportunity> oppsToBeInserted = new List<Opportunity>(); // so we can insert all the opps in one go
        
        
        for(Account each : newList){ //go through all the accounts in newList aka Trigger.new

        Opportunity opp = new Opportunity(); //create opportuunities for each one and populate required fields
        opp.name = each.name;
        opp.AccountId = each.Id; //we need the ID so we can use it for opps!
        opp.StageName = 'prospecting';
        opp.CloseDate = System.today();
        oppsToBeInserted.add(opp);
    }
            
           
        
       if(!oppsToBeInserted.isEmpty()){ 
           insert oppsToBeInserted;
           
       }
            
            
        }
        
        
        
        
        
    }