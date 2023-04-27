public class WebServicesIntigrationToAnkeshDevOrg {
	public static void getCase(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request.setEndpoint('https://ankesh-dev-ed.my.salesforce.com/services/apexrest/Cases/5002w000008mNrMAAU');
        request.setEndpoint('callout:ank1/services/apexrest/Cases/5002w000008mNrMAAU');
        request.setMethod('GET');
        // If authentication is not set **DON'T USE IN PRODUCTION**
        //request.setHeader('Authorization', 'Bearer !AQQAQLUfpyvFSuOEH.9RpwCoYjHGTYtmtfH5Vm_n5cgST45Lgu_NGqiXOfaIqwnxBk384c3VnMxSaGzHqA8h1YiY0kqYM3S4');
        HttpResponse response = http.send(request);
		
        System.debug(response);
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody()); 
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            System.debug(results.get('Subject'));            
        }
    }
}