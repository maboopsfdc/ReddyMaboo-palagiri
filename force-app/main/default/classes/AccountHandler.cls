public class AccountHandler {
    
    
    public static void insertAccount(Integer numberofAccounts){
        
        
        Integer n = 1;
        
        List<Account> addAccounts=new List<Account>();
        
        while(n <= numberofAccounts){
            Account acc=new Account();
            acc.Name='Acme Inc '+ n;
            acc.AccountNumber='A000'+ n;
            addAccounts.add(acc);
            
            n=n+1;
            
        }
        insert addAccounts;
        
    }
    
    
}