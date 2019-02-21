public class AccountProcessor {
    
    @future
    public static void countContacts(List<String> idList){
        List<Account> accounts = [Select Id, (Select Id From Contacts) From Account Where Id IN :idList];
        System.debug('Accounts size= ' + accounts.size() + ' iD\'S size= ' + idList.size());
        for(Account a: accounts){
            a.Number_of_Contacts__c = a.Contacts.size();
        }
    }

}