public class GameHandler {
    
    public void run(List<Game__c> triggerGames) {
        updateNameField(triggerGames);
        updateConditionField(triggerGames);
    }
    
    public void updateNameField(List<Game__c> triggerGames) {
        for (Game__c game : triggerGames) {
            if(game.name == null) {
                game.name = 'Unknown name from module';
            }
        }
    }
    
    public static void updateConditionField(List<Game__c> triggerGames) {
        for (Game__c game : triggerGames) {
            if(game.condition__c == null) {
                game.condition__c = 'Unknown condition from module';
            }
        }
    }
}