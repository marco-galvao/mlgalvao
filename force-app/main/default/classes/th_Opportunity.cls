/*
 * Created by marco.galvao on 19/02/2019.
 */
public class th_Opportunity extends TriggerHandler {
	private Map<Id, Opportunity> newOppMap;

	public th_Opportunity() {
		this.newOppMap = (Map<Id, Opportunity>) Trigger.newMap;
	}

	public override void afterUpdate() {
		system.debug('entrou after update');
	}
}