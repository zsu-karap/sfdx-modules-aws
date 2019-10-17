@isTest
public class BookHandlerTest {
    
	@testSetup
    static void createTestData() {
        Book__c testBook = new Book__c();
        insert testBook;
    }
    
    @isTest 
    static void updateTitleAndAuthorFieldsSuccess() {
	   
       Test.startTest();
       
       List<Book__c> testBooks = [select Id, Name, Title__c, Author__c FROM Book__c LIMIT 1];
       new BookHandler().run(testBooks);
      
       system.assertEquals('Unknown title',testBooks[0].Title__c);
       system.assertEquals('Unknown author',testBooks[0].Author__c);
     
       Test.stopTest();
    }
    
    @isTest 
    static void updateAuthorFieldSuccess() {
	   
       Test.startTest();
       
       List<Book__c> testBooks = [select Id, Name, Title__c, Author__c FROM Book__c LIMIT 1];
       testBooks[0].title__c = 'Gone with the wind';
       new BookHandler().run(testBooks);
      
       system.assertEquals('Gone with the wind',testBooks[0].Title__c);
       system.assertEquals('Unknown author',testBooks[0].Author__c);
     
       Test.stopTest();
    }
    
    @isTest 
    static void updateTitleFieldSuccess() {
	   
       Test.startTest();
       
       List<Book__c> testBooks = [select Id, Name, Title__c, Author__c FROM Book__c LIMIT 1];
       testBooks[0].author__c = 'Margaret Mitchell';
       new BookHandler().run(testBooks);
      
       system.assertEquals('Unknown title',testBooks[0].Title__c);
       system.assertEquals('Margaret Mitchell',testBooks[0].Author__c);
     
       Test.stopTest();
    }
    
}