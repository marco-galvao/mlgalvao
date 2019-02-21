public class ContactSearch {
	
    public static List<Contact> searchForContacts(String name, String mailingPostalCode){
        List<Contact> conList = [Select Id, Name From Contact Where LastName=:name AND MailingPostalCode=:mailingPostalCode];
           return conList;
    }
}