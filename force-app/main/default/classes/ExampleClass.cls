public class ExampleClass {

 public Integer Age{get;set;}
 public string Message{get;set;}
 public Boolean Eligible{get;set;}
  public void DoAction(){
  if(Age>=18){
  Eligible =True;
  Message='Eligible for vote';
  }
  else{
  Eligible=False;
   Message='Not Eligible for voting';
  }
  }
}