public class List1 {
    public static void DemoList(){
        
        List<string> nameList=new List<string>();
        
        nameList.add('Ammu');
        nameList.add('sravan');
        nameList.add('sweety');
        nameList.add('chinni');
        nameList.remove(1);
        nameList.add(0,'Mabu');
        nameList.size();
        system.debug(' nameList '+nameList);
        
        set<string> setst=new set<string>{} ;  
        system.debug(' set Elements '+setst);
        
        List<account> accList=new List<account>();
        account acc=accList.get(0);
        
        string name0=nameList.get(0);
        system.debug(' #### name0 '+name0);
        
        
        
        
        
        
        map<id,account> accMap=new map<id,account>([select id,name from account limit5]);
        system.debug(' ids from account '+accMap.keyset());
        system.debug(' values from account '+accMap.values());
        
    
   /* set<string> weekdays=new set<string>();
    set<string> weekdays1= new set<string>('Monday','Tuesday','Wednesday');
    weekdays1.add('Thrusday');
    system.debug(weekdays1.contains('Wednesday'));*/
        
        
    }
    

               public static void ListTest(){
                   List<string> namelist1=new List<string>();
                   namelist1.add('Sravan');
                   namelist1.add('sruthi');
                   namelist1.add('chinni');
                   namelist1.remove(2);
                   namelist1.add('Ammu');
                   string nam=namelist1.get(0);
                   system.debug(' nam '+nam);
                   system.debug(' namelist1 '+namelist1);
                   
                   namelist1.add('abc');
                   namelist1.add('sweety');
                   namelist1.add('chinnoda');
                   namelist1.add('chinni');
                   namelist1.remove(2);
                   namelist1.set(0,'Ammu');
                   system.debug(' namelist1 '+namelist1);
                   
    }
                   
                   
               }