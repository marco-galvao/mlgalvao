/**
 *  Purpose         :   Controller for Google Drive Integration 
 *  
 *  Created By      :   Yogesh
 * 
 *  Created Date    :   03/14/2016
 * 
 *  Revision Logs   :   V_1.0 - Created
 *                  
 **/

public with sharing class GoogleDriveIntegrationController {
    
    //Properties
	public List<AccountWrapper> accountwrappers {get;set;}
    String code;
    string key;
    string secret;
    string redirect_uri;
    String CheckFlag;
    
    /**
     * Constructor of class
     * @parameter   :   controller  ApexPages.StandardController(Standard)
     */
     public GoogleDriveIntegrationController(ApexPages.StandardController controller) { 

        //InIt method to load all the properties
        inIt();
    }
	
    /**
     *  @description    :   Init method to load all the properties
     *
     *  @return         :   void
     *
     **/
    public void inIt() {
 
 		//Initialise ation for google drive example
        //Fetched from URL
    	code = null;
    	
    	//This is the client key/Client Id , you generated from the Google developer console, paste here
    	key = '408628978740-besksfmi9rj31h5fqsu3qbqelpk1g4cf.apps.googleusercontent.com' ;
    	
    	//This is the client secret , you generated from the Google developer console, paste here
    	secret = 'IMfjxpXYs6b2RxqksQ_nFdrL' ;
    	
    	//this is the url, you will redirect on the page after success, Make sure this url is white list in the google developer console, if not then add it
    	//Make sure this is same as you created in step-6
    	redirect_uri = 'https://c.cs14.visual.force.com/apex/MasterApplicationDownloadAttachments';
        
        System.debug('shhdhshdhshdhshdhhd' + ApexPages.currentPage().getUrl());
        code = ApexPages.currentPage().getParameters().get('code') ;
 		System.debug('dsdsjdsjdjsjdjsjdsjd' + code);
 		
 		//Initialization
        accountWrappers = new List<AccountWrapper>();
        
    	//Check google code key in URL
 		if(code != '' && code != null)
        {
        	driveAuthenticationAndUplaod();
        	return;
        }
    }
    
    
	/**
    *  @description    :   This method is responsible for Google drive authentivation and upload file on drive
    *
    *  @args           :   
    *
    *  @return         :   void
    *
    **/
    public void driveAuthenticationAndUplaod(){
    	
    	//code = ApexPages.currentPage().getParameters().get('code') ;
        System.debug('codesdd:::' + code);
            
        //Get the access token once we have code
        if(code != '' && code != null)
        {
        	System.debug('code:::' + code);
         	AccessToken();
        }
    }
    
    
    public void AccessToken()
    {
    	//Getting access token from google
        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('https://accounts.google.com/o/oauth2/token');
        req.setHeader('content-type', 'application/x-www-form-urlencoded');
        String messageBody = 'code='+code+'&client_id='+key+'&client_secret='+secret+'&redirect_uri='+redirect_uri+'&grant_type=authorization_code';
        
        System.debug('messageBody::::' + messageBody );
        req.setHeader('Content-length', String.valueOf(messageBody.length()));
        req.setBody(messageBody);
        req.setTimeout(60*1000);

        Http h = new Http();
        String resp;
        HttpResponse res = h.send(req);
        resp = res.getBody();
        
        System.debug(' This is the reponse from google: ' + resp );
        
        //Code to get Access Token from google response
        String str = resp;
		List<String> lstStr = str.split(',');
		System.debug('@@@'+lstStr[0]);
		List<String> lstStr1 = lstStr[0].split(':');
		System.debug('###'+lstStr1[1]);
		String st = lstStr1[1].remove('"').trim();
		System.debug('@#@'+st);
        
        System.debug('JHSDHSDJSJDJSD'  + st + 'TETTETTETTE');
    	
    	Http http = new Http();
		req = new HttpRequest();
		req.setMethod('POST');
		req.setEndpoint('https://www.googleapis.com/upload/drive/v2/files?uploadType=media');
		req.setHeader('content-type', 'text/csv');
		req.setHeader('Authorization','Bearer '+st);
		
		//We are calling method, in this method you can iterate your wrapper
		String contentOfDriveInCSV = driveContent();
		req.setBody(contentOfDriveInCSV);  
		req.setTimeout(60*1000);
		HttpResponse respp = http.send(req);
	
    }
    
    public PageReference DriveAuth() 
    {
    	//Authenticating
        PageReference pg = new PageReference(GoogleDriveAuthUri (key , redirect_uri)) ;
       	return pg;
    }
    
    public String GoogleDriveAuthUri(String Clientkey,String redirect_uri)
    {
        String key = EncodingUtil.urlEncode(Clientkey,'UTF-8');
        String uri = EncodingUtil.urlEncode(redirect_uri,'UTF-8');
        String authuri = '';
        authuri = 'https://accounts.google.com/o/oauth2/v2/auth?'+
        'scope=https://spreadsheets.google.com/feeds https://www.googleapis.com/auth/drive&'+
        'state=security_token%3D138r5719ru3e1%26url%3Dhttps://oa2cb.example.com/myHome&'+ 
        'redirect_uri=' +uri+ 
        '&response_type=code&'+
        'client_id='+key+
        '&access_type=offline'; 
        
        return authuri;
    }
    
    
    private String driveContent(){
    
    	String messageBodies = 'Number ,PTC,Last,First,Mid,Gender,Nationality,DOB,Passport No,Email,Phone\r';
		messageBodies+= 'Hello, Test , test, Test,Test, Test, Test,TEst\r';
		
		/*for(AccountWrapper acw : AccountWrappers){
			//and add data in messageBodies;
		}
		*/
		
		//You can iterate your wrapper here as well as
		return messageBodies;
    }
    
    /**
     * Wrapper Class gathering user inputs
     */
    public class AccountWrapper{
    
        //Properties
        public Account account{get;set;}
        
        //Parameterised consrtuctor
        public AccountWrapper(Account account) {
            
            //Properties
            this.account = account;
        }
    }
}