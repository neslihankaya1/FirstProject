trigger AccountsTrigger on Account (before insert, after insert) {

    if(Trigger.isInsert){
        
        if(Trigger.isbefore){
            TriggerHandlerClass.beforeInsert(Trigger.New);
            
        }else if(Trigger.isAfter){
             TriggerHandlerClass.afterInsert(Trigger.New);
            
        }
        
        
        
        
        
    }
    
}