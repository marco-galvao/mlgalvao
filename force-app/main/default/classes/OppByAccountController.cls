public class OppByAccountController {
    List<Account> accounts;
    List<Opportunity> oppsFromAccount;
    public String accountSelected {get;set;}
    public Boolean hasSelectedAccount {get;set;}
    public Account currentAccount {get;set;}
    
    public OppByAccountController(){
    }
    
    public List<Account> getAccounts() {
        
        if(accounts == null) accounts = [select name, phone, accountNumber  from account limit 10];
        
        return accounts;
        
    }
    
    public List<Opportunity> getOppsFromAccount() {
        oppsFromAccount = [select AccountId, Name, id  from Opportunity Where AccountId =:accountSelected limit 10];
        
        return oppsFromAccount;
        
    }
    
    public void setSelected(){
        hasSelectedAccount = true;
    }
    
    public PageReference updatePanel(){
        hasSelectedAccount = false;
        setSelected();
        currentAccount = [select Name, id  from Account Where id =:accountSelected];
        return null;
    }
}