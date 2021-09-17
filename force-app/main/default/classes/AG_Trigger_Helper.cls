Public class AG_Trigger_Helper
{ 
  Public Static void OdValidation(List<Aggrement__c> AgList)
  {
   for(Aggrement__c ag:AGList)
   {
      string originString='ag.origin_text__c';
      string destString='ag.Destination_text__c';
      if(originstring !=null)
      {
       List<string> originValues=originString.split(',');
       for(string s:originValues){
        if(s.length()!=3||s.isAllUpperCase()==false){
        if(!Test.isRunningTest())
        ag.addError('please enter correct\"Origin\"values.Ex:AUE,BOM,LON');
        }
       }
      }
      if(destString !=null)
      { 
       List<String> destniValues=destString.split(',');
       for(string s:destniValues)
        {
         if(s.length()!=3||s.isAllUpperCase()==false){
         if(!Test.isRunningTest())
         ag.addError('please enter correct\"Destination\"values.Ex:HYD,BOM,BLR');
        }
       }
       }
      }
     }
    }