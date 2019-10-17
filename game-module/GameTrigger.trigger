trigger GameTrigger on Game__c (before insert, before update) {
    
    if(Trigger.IsBefore & (Trigger.isInsert || Trigger.isUpdate)) {
        new GameHandler().run(Trigger.New);
    }
}