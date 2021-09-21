public class AccountUtility {
    
    public static void viewAnnualRevenue(){
        
        List<Account> accountsList = [select Id,Name,phone,Address,AnnualRevenue from Account];
        for(Account acc:accountsList){
            string acctRev ='Name:'+ acc.Name +',AnnualRevenue:'+acc.AnnualRevenue;
            system.debug('fullNames=='+acctRev);
            
        }
    }

}