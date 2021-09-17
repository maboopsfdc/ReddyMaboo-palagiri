public class sendSmsClass {
    
    public string cPhone{get;set;}
    public string cMessage{get;set;}
    public string response{get;set;}
    
    
    public void sendSms(){
        
        Http htp = new Http();
        
        string endPoint = 'https://api.textlocal.in/send?apiKey=xYMsBUcdWrY-mPk3gjpr7aqfDFnc0UdH1Tjbxuoorl&numbers='+cPhone+'&message='+cMessage;
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        
        HttpResponse res = htp.send(request);
        
        response = res.getBody();
        
    }
            

}