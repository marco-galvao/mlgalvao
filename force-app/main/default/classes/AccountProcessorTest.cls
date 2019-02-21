@IsTest
public class AccountProcessorTest {
	@IsTest
    public static void testCountContacts(){
    Test.startTest();
        List<String> listId = new List<String>();
        List<Account> listAcc = new List<Account>();
        
        for(Integer i = 0; i < 20; i++){
            Account a = new Account(Name= 'John Smith');
            listAcc.add(a);
        }
        insert listAcc;
        for(Account a: listAcc){
            listId.add(a.Id);
        }
        
        AccountProcessor.countContacts(listId);
    Test.stopTest();
    }
}