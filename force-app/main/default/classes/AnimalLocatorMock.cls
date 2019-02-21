@isTest
global class AnimalLocatorMock implements HttpCalloutMock{
	global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"s":2,"v":{"id":0,"name":"","eats":"","says":""}}}');
        response.setStatusCode(200);
        return response; 
    }
}