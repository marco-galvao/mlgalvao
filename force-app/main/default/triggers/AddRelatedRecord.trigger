trigger AddRelatedRecord on Account(after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();
    
    // Add an opportunity for each account if it doesn't already have one.
    // Iterate through each account.
    for(Account a : [SELECT Id,Name FROM Account WHERE Id IN :Trigger.New AND
                                             Id NOT IN (SELECT AccountId FROM Opportunity)]) {
	// If it doesn't, add a default opportunity
	   oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id));
    }

    if (oppList.size() > 0) {
        insert oppList;
    }
}