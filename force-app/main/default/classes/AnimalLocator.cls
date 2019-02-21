public class AnimalLocator {
    
    public static String getAnimalNameById(Integer i){
        String result = ' ';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/:id'+i);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserialize the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            Map<String, Object> results2 =(Map<String, Object>) results.get('animal');
            result = (String) results2.get('name');
            result += 'trailhead';
        }
        return result;
    } 
}