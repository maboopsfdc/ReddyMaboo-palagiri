public class PropertyUtility1 {
     public static void newListedProperties(){
        
        List<Property__c> newPropList = [Select Name,Days_On_Market__c,Broker__r.Email__c from Property__c
                                          where CreatedDate= LAST_N_DAYS:30 ];
        
        for(Property__c pro:newPropList){
            string propEmail = 'Name:'+ pro.Name +',Broker__r.Email__c:'+ pro.Broker__r.Email__c;
            system.debug('first==='+propEmail);
        }
    }


}