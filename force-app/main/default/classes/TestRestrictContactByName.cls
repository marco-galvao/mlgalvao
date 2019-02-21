@isTest
public class TestRestrictContactByName {
    @isTest public static void test(){
        Contact c = new Contact(LastName= 'INVALIDNAME');
        insert c;
    }
}