@isTest
public class TestVerifyDate {
	
    
        @isTest static void testDates() {
        Date date1 = Date.newInstance(2016, 9, 8);
        Date date2 = Date.newInstance(2016, 10, 9);
        Date date3 = VerifyDate.CheckDates(date1, date2);
        System.assertNotEquals(date1, date3);
        Date date4 = Date.newInstance(2016, 9, 9);
        Date date5 = VerifyDate.CheckDates(date1, date4);
        System.assertEquals(date1, date5);
            
    }
}