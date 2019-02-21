/* @Author: Marco Galvão
 * @Visualforce: p_Objeto1Viewer
 * */
public class c_Objeto1Viewer {
	public String helloWorld {get; set;}
	public List<Account> objs {get; set;}
	public List<AggregateResult> agg {get; set;}
	String test;
	public c_Objeto1Viewer(){
		//declara helloWorld
		helloWorld = 'Hello World!!!';//asdfasfdsd
		//
		/*asdfa
		        asdfas
		        adfasd*/
		List<Integer> myInts = new List<Integer>();
		if (true) {
			if (true) {
				//teste my branch123
			}
			//testeste
		}

		//()

		myInts.add(1);
		//(1)
		Account acc2 = new Account();
		acc2.Match_Billing_Address__c = false;

		Contact cont = new Contact();

		myInts.add(2);
		//(1,2)
		//teste
		objs = [Select AccountNumber, Name From Account Where createdDate <= today];
		Account acc = new Account(AccountNumber ='téste');
		teste1 myVAr = new teste1();
		System.debug(myInts);
		if(!objs.isEmpty()) {

		}


		agg = [Select Count(Id) counter, Sla__c From account Group by Sla__c];
		system.debug(agg);
		for(AggregateResult forVar : agg) {
			system.debug(forVar.get('counter'));
		}
	}

	public void metodo1(){
		system.debug(LoggingLevel.INFO, 'Entrou no método!');
		helloWorld = 'Hello again!!';

		Account acc = new Account();
		acc.Name = 'test';
		insert acc;

		delete objs;

		update objs;

		Contact c = new Contact();
		c.Account = new Account();
		//c.Account.Chave_Externa__c = '123';

		upsert c;

		undelete objs;
	}

	@future
	static void metodoFuturo(){

	}

	public class teste1 {
		public String str1;
		Integer int2;
	}
}