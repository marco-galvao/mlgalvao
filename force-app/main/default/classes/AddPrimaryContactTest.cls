@isTest
public class AddPrimaryContactTest {
    
    static testMethod void test(){
		List<Account> listAcc = new List<Account>();
        for(Integer i = 0; i <50 ; i++){
            listAcc.add( new Account (Name='PrimaryContact ' + i, BillingState = 'NY'));
        }
        
        for(Integer i = 0; i <50 ; i++){
            listAcc.add( new Account (Name='PrimaryContact ' + i, BillingState = 'CA'));
        }
        
        insert listAcc;
        
        Test.startTest();
        AddPrimaryContact apc = new AddPrimaryContact(new Contact(LastName='Primary Contact'), 'CA');
        System.enqueueJob(apc);
        //System.assertEquals(apc.getContact(), );
        Test.stopTest();
    }
}