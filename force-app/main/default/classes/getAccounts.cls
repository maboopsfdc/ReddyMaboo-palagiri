public with sharing class getAccounts {

    public list<Account> aclist {get;set;}
        
public getAccounts() {

//aclist =[select id,name from Account];

}

public void collectAcc(){

//aclist =[select id,name,Owner_name__c from Account];

acclistClass ac = new acclistClass();

aclist =ac.getAcc();
}
public void clearAcc(){

aclist.clear();

}


}