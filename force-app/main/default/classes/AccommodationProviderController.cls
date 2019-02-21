@RestResource(urlMapping='/testsoapapi/*')
global class AccommodationProviderController
{
    @HttpPost
    global static void create(Lead lead)
    {   
        RestRequest request = RestContext.request;
        RestResponse response = RestContext.response;
        /*
        accommodationProvider.id  = request.params.get('apid');
        
        AccommodationProviderAssembler accommodationProviderAssembler = new AccommodationProviderAssembler();
        Lead lead = accommodationProviderAssembler.AccommodationProviderToLead(accommodationProvider);*/
		
        system.debug('request: ' + request);
        system.debug('response: ' + response);
        try {
            insert lead;
            return;
        } catch(exception ex){
            return;
        }
    }
    @HttpGet
    global static String doGet() {
        String name = RestContext.request.params.get('name');
        return 'Hello '+name;
    }

}