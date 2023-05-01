List<Opportunity> opps = new List<Opportunity>();
for(Integer i = 1; i <=10; i++){
    Opportunity opp = new Opportunity(); 
    opp.Name = 'Opp - ' + i ; 
    opp.CloseDate = Date.today().addDays(10) ; 
    opp.StageName = 'Prospecting' ;

    Double num = Math.random() * 100000;
    opp.Amount = num.round(); 
    opps.add(opp) ; 
}
insert opps ; 

Account acct = new Account(Name = 'Parent of Very Cool Opps'); 
insert acct;

List<Opportunity> coolOppsList = new List<Opportunity> (); 

for(Opportunity eachOpp : opps) {

    if(eachOpp.Amount > 60000){
        eachOpp.AccountId = acct.Id ; 
        coolOppsList.add(eachOpp); 
}
}
update coolOppsList;
