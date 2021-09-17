public class AccountTrigger_helper {

public static void updateCon(List<account> acclist,Map<id,Account> newMapofAcc){
        list<id> accids = new list<id>();       
        for(Account a :acclist){            
            accids.add(a.id);
        }
                        
        List<contact> updateconlist = new list<contact>();
        List<Contact> conlist =[select id,name,phone,Accountid from contact where AccountId IN:accIds];
            for(contact c :conlist){                
               c.phone=newMapofAcc.get(c.AccountId).phone;
               updateconlist.add(c);
            }
        update updateconlist;
    }


}