public class NewCaseListController {

    
   public List<Case> getNewCases() {
       /*  List<Case> results = Database.query(
            'SELECT Id, CaseNumber, Status ' +
            'FROM Case ' +
            'WHERE STATUS = New' wont work ''
           ); */
            List<Case> L_CASE = [Select Id, CaseNumber, Status from Case where Status ='New'];
        
        return L_CASE;
    }
}