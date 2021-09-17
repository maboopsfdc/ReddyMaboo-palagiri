public with sharing class currentUserInfoCtrl {
   @AuraEnabled 
    public static user fetchUser(){
     // query current user information  
      User oUser = [select id,Name,Username,Alias,Country,Email,FirstName
                 FROM User Where id =: userInfo.getUserId()];
        return oUser;
    }
}