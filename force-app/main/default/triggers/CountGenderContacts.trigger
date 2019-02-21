trigger CountGenderContacts on Contact (after insert, after update) {
	
    Set<ID> accounts = new Set<ID>();
    
    for(Contact contact : Trigger.new){
        	accounts.add(contact.AccountId);
	}
    Integer male = 0;
    Integer female = 0;
    
    List<Account> finalAccounts = [Select id, Number_of_Male_Contacts__c, Number_of_Female_Contacts__c,                  
                          (Select id, Gender__c from Contacts) from Account Where id in :accounts];
    for(Account account: finalAccounts){
                              for(Contact contact: account.Contacts){
                                  if(contact.Gender__c == 'Female'){
                                      female++;
                                  }else male++;
                              }
                              account.Number_of_Male_Contacts__c = male;
                              account.Number_of_Female_Contacts__c = female;
                          }
    update finalAccounts;
    
    
    
    
    
    
    
    /*List<ID> accounts = new List<ID>();
    
    for(Account account : Trigger.new){
        Account old = Trigger.oldMap.get(account.Id);
        if(old.BillingCity != account.BillingCity){
			accounts.add(account.Id);
        }
	}
    if(!accounts.isEmpty()){
    List<Contact> listAux= new List<Contact>();
    for(Account account: [Select id,BillingCity, (select id,MailingCity from Contacts) From Account Where id in :accounts]){
        for(Contact contact: account.Contacts)  {
            contact.MailingCity = account.BillingCity;
            listAux.add(contact);
        } 
    }
    update listAux;
    }*/
}