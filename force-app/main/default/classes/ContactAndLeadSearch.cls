public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String name){
        
        String Find_Name = name;
        

        List<List<sObject>> matrixList = [Find :name IN NAME FIELDS RETURNING Contact,Lead];
        
        return matrixList;
        
    }

}