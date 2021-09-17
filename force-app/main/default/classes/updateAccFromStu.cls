public class updateAccFromStu {

  public static void updateAcc(List<Student__c> Stu) {
      
    List<Account> updateAccList = new List<Account>();
    List<string> mCodesList = new List<string>();

    for(Student__c stud:stu){
        mCodesList.add(stud.SerialNumber__c);
    }
    List<Account> accList = [Select Id, Name, SerialNumber__c from Account where SerialNumber__c IN :mCodesList];
    for ( Student__c studs:stu ) {
        for(Account acc: accList){
            system.debug('====1=====');
            if(studs.SerialNumber__c == acc.SerialNumber__c){ 
                acc.Description=studs.Address__c;
         
                updateAccList.add(acc);
            }
                        
        }
    }
    if(updateAccList.size() > 0){
        try {
        update updateAccList;
        } catch(DmlException e) {
        System.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
  }
}