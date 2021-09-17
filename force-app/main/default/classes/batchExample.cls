global class batchExample implements Database.Batchable<sObject> {
   
    global Database.QueryLocator start(Database.BatchableContext BC) {
        // collect the batches of records or objects to be passed to execute
        
        String query = 'SELECT Id,Phone FROM contact';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<contact> conList) {
       
        

        
        for(contact con: conList)
        {        
  
            
             
             //string s=con.Phone;
             con.phone ='4545454';        
        }
        try {
           
            update conList;
        
        } catch(Exception e) {
            System.debug(e);
            
        }
        
    }   
    
    global void finish(Database.BatchableContext BC) {
    
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {'r.maboopsfdc@gmail.com'};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Batch Subject ');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { });
            }
}