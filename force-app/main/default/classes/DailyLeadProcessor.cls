global class DailyLeadProcessor implements Schedulable {
	
    
    global void execute(SchedulableContext ctx) {
        List<Lead> leadList = [Select id, LeadSource From Lead Where LeadSource = null LIMIT 200];
        for(Lead l: leadList){
            l.LeadSource='Dreamforce';
        }
    }
}