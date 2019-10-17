trigger BookTrigger on Book__c (before insert, before update) {
    
    if(Trigger.IsBefore & (Trigger.isInsert || Trigger.isUpdate)) {
        new BookHandler().run(Trigger.New);
    }
}