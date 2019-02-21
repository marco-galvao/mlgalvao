public class CampingListController {
    @AuraEnabled
    public List<Camping_Item__c> getItems(){
        return [SELECT Id, Quantity__c, Price__c, Packed__c, Name FROM Camping_Item__c];
    }

	public static Camping_Item__c saveItem(Camping_Item__c item) {
		// Perform isUpdatable() checking first, then
		upsert item;
		return item;
	}
}