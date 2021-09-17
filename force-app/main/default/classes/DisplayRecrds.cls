public class DisplayRecrds {
public List<account> acclist{get;set;}
public List<Integer> NumberList{get;set;}
public Integer startNumber{get;set;}
public Integer EndNumber{get;set;}
public Integer NumberA{get;set;}
public Integer NumberB{get;set;}

public DisplayRecrds(){
acclist=[select id,name,phone,Fax,Type from account];
}
public void DisplayNumbers(){
NumberList=new list<Integer>();
for(Integer i=startNumber;i<EndNumber;i++){
NumberList.add(i);


}
}
}