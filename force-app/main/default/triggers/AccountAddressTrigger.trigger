trigger AccountAddressTrigger on Account (before insert, before update) {
    for(Account a: Trigger.new){
        if(a.BillingPostalCode != null && a.Match_Billing_address__c == true){
            a.ShippingPostalCode = a.BillingPostalCode;
        } 
    }
}