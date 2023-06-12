public with sharing class OppController {
    @AuraEnabled(cacheable=true)
    public static Opportunity getOppWithMaxAmount() {
        return [SELECT Name, StageName, Amount FROM Opportunity ORDER BY Amount DESC LIMIT 1];
    }
}