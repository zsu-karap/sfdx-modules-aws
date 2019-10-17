public class BookHandler {
    
    public void run(List<Book__c> triggerBooks) {
        updateTitleField(triggerBooks);
        updateAuthorField(triggerBooks);
    }
    
    public void updateTitleField(List<Book__c> triggerBooks) {
        for (Book__c book : triggerBooks) {
            if(book.title__c == null) {
                book.title__c = 'Unknown title from module';
            }
        }
    }
    
    public static void updateAuthorField(List<Book__c> triggerBooks) {
        for (Book__c book : triggerBooks) {
            if(book.author__c == null) {
                book.author__c = 'Unknown author from module';
            }
        }
    }
}