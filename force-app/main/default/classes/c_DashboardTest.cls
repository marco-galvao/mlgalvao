public class c_DashboardTest {
    public String dashboardId {get;set;}
    public c_DashboardTest(ApexPages.StandardController controller){
        dashboardId = [Select Id From Dashboard Where DeveloperName = 'Test_asdawsda'].Id;
    }
}