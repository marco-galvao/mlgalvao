@RestResource(urlMapping='/servico')
global class rest_ServicoBLP {
    @HttpPost
    global static String doPost() {
        
        return 'Funciona!!';
    }
}