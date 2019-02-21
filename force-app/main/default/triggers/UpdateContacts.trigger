trigger UpdateContacts on Account (after update) {
   	List<ID> accounts = new List<ID>();
    
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
    }
}