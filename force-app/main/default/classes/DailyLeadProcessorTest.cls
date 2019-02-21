@isTest
public class DailyLeadProcessorTest {
    
    static testMethod void test(){
        List<Lead> leads = new List<Lead>();
        for(Integer i = 0; i < 200; i++){
            leads.add(new Lead(Company='SAC', LastName='Galvao'));
        }
    	insert leads;
        
        Test.startTest();
        DailyLeadProcessor dlp = new DailyLeadProcessor();
        String jobId = System.schedule('Schedule Test', '0 0 0 15 3 ? 2022', dlp);
        Test.stopTest();
    }
}