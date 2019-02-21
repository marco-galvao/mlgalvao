trigger t_Opportunity on Opportunity (after update) {

	new th_Opportunity().run();
}