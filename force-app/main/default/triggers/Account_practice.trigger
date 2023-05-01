trigger Account_practice on Account (before insert, before update) {

Set<Id> ids = new Set<Id>();


for(Account each : trigger.new){
    ids.add(each.OwnerId);

}

//owner is a user object
//retrieve the fields from user object

List<User> userList = [Select name from user where id in :ids ] ;


   for(Account each : trigger.new){
    for(User users : userList){
        if(each.OwnerId==users.Id){
            each.sales_rep__c=users.Name;
        }
    }
}
}

/* Map<Id,User> usermap = new Map<Id,User>(userList);
for(Account each : trigger.new){
each.sales_rep__c=usermap.get(each.OwnerId).Name;
}



}
*/