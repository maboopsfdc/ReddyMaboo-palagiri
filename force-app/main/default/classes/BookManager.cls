@RestResource(urlMapping='/v1/BookManagement/')
global class BookManager{
    @httpGet
    global static Book__c doGetBook(){
        Book__c book =new Book__c();
        Map<String, String> paramsMap = RestContext.request.params;
        String bookId = paramsMap.get('Id');
        book = [select Id,name,Price__c from Book__c where Id=: bookId ];
        return book;
    }
    @httpPost
    global static Book__c doCreateBook(BooksInfo bookInfo){
    Book__c  book = bookInfo.book;
    insert book;
    return book;
    }
    @httpPut
    global static Book__c  doUpdateBook(String Name,Decimal price){
    Map<String,string> paramsMap = RestContext.request.params;
    String bookId = paramsMap.get('Id');
    Book__c  book = new Book__c (Name = name, Id = bookId);
    update book;
    return book;
    }
    global class BooksInfo{
    Book__c  book{get;set;}
    }
}