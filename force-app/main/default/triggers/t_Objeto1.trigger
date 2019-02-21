trigger t_Objeto1 on Objeto1__c (before insert, after insert, before update, after update, before delete, after delete) {
    
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            
        }
    }else{
        
    }
}