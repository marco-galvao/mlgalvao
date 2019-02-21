({
    clickCreateItem: function(component, event, helper) {
        var validExpense = component.find('expenseform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validExpense){
            // Create the new expense
            var newItem = component.get("v.newItem");

            
            var theItems = component.get("v.items");
            

            // THIS IS A DISGUSTING, TEMPORARY HACK
            var newItem = JSON.parse(JSON.stringify(newItem));
            

            theItems.push(newItem);
            component.set("v.items", theItems);

            var newResetItem = JSON.parse("{'sObjectType': 'Camping_Item__c'}");
            component.set("v.newItem", newResetItem);
        }
    }
})