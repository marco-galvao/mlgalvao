@isTest
private class LeadProcessorTest {
    
    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        for(Integer i = 0; i < 200; i++){
            leads.add(new Lead(Company='SAC', LastName='Galvao'));
        }
    	insert leads;
    }
    
    static testMethod void test(){
        Test.startTest();
        LeadProcessor leadProcessor = new LeadProcessor();
        Id BatchId = database.executeBatch(leadProcessor);
        Test.stopTest();
    }
}