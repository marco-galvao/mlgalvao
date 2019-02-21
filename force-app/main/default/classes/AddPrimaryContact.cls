public class AddPrimaryContact implements Queueable{
    private Contact c;
    private String state;
//comeent test1234çãósdfasdfa
    public AddPrimaryContact (Contact c, String state){
        this.c = c;
        this.state = state;
    }
    
    public void execute(QueueableContext context){
        List<Account> listAcc= [Select Id, BillingState, (Select Id From Contacts) From Account Where BillingState = :state];
        for(Account a: listAcc){
            a.Contacts.add(c.clone(true,true,true,true));
        }
        
        insert listAcc;
    }
    
    /*public Contact getContact(){
        return c;
    }*/
}