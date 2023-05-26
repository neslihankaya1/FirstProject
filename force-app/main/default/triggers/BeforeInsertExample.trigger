trigger BeforeInsertExample on Account (before insert) {
    
    //BEFORE INSERT EXAMPLE
    // EX: if the account Industry is not null and has media as a value the populate the Rating as Hot
    //--------------------------
    
        for(Account each : Trigger.new){
            if(each.Industry != null && each.Industry =='Media'    ){ //going through each record in Trigger.new
               each.Description = 'From Trigger';
                each.Rating = 'Hot';
            }
        }
    }