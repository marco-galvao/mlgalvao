trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> newTasks = new List<Task>();
     for(Opportunity opp : [SELECT Id FROM Opportunity WHERE Id IN :Trigger.New AND
                                             StageName = 'Closed Won']) {
                                                Task newTask = new Task(WhatId=opp.Id, Subject='Follow Up Test Task');
                                             	newTasks.add(newTask);
                                             }
    if (newTasks.size() > 0) {
        insert newTasks;
    }
}