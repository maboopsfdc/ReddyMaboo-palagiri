global class AccountService{
Webservice static string createCustomer(string Name,string Phone,string city){
Account objA=new Account();
   objA.Name=Name;
   objA.Phone=phone;
   objA.Billingcity=city;
   insert objA;
         if(objA.Id!=null){
           return'sucess';
         }
            else{
           return'failure';
       }
}
}