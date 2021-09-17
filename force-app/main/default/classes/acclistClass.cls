public with sharing class acclistClass{

public List<Account> getAcc(){

  List<Account> acclist =[select id,name,Owner_name__c from Account];
  
  return acclist;
}


}