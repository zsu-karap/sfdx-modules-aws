@isTest
public class GameHandlerTest {
    
	@testSetup
    static void createTestData() {
        Game__c testGame = new Game__c();
        insert testGame;
    }
    
    @isTest 
    static void updateNameAndConditionFieldsSuccess() {
	   
       Test.startTest();
       
       List<Game__c> testGames = [select Id, Name, Condition__c FROM Game__c LIMIT 1];
       new GameHandler().run(testGames);
      
       system.assertEquals('Unknown name',testGames[0].Name);
       system.assertEquals('Unknown condition',testGames[0].Condition__c);
     
       Test.stopTest();
    }
    
    @isTest 
    static void updateConditionFieldSuccess() {
	   
       Test.startTest();
       
       List<Game__c> testGames = [select Id, Name, Condition__c FROM Game__c LIMIT 1];
       testGames[0].Name = 'The Witcher 1';
       new GameHandler().run(testGames);
      
       system.assertEquals('The Witcher 1',testGames[0].Name);
       system.assertEquals('Unknown condition',testGames[0].Condition__c);
     
       Test.stopTest();
    }
    
    @isTest 
    static void updateNameFieldSuccess() {
	   
       Test.startTest();
       
       List<Game__c> testGames = [select Id, Name, Condition__c FROM Game__c LIMIT 1];
       testGames[0].Condition__c = 'Mint edition';
       new GameHandler().run(testGames);
      
       system.assertEquals('Unknown name',testGames[0].Name);
       system.assertEquals('Mint edition',testGames[0].Condition__c);
     
       Test.stopTest();
    }
    
}