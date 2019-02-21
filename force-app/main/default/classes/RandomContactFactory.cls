public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer n_contacts, String lastName){
        List<Contact> listCon = new List<Contact>();
        for(Integer i = 0; i < n_contacts; i++){
            Contact c = new Contact(FirstName = 'Test '+i, LastName= lastName);
            listCon.add(c);
        }
        return listCon;
    }
}