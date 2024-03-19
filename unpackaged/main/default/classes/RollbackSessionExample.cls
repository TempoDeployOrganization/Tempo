public class RollbackSessionExample {
    public static void performDatabaseOperations() {
        // Inserting a new Account record
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        // Inserting a new Contact record related to the Account
        Contact con = new Contact(FirstName = 'John', LastName = 'Doe', AccountId = acc.Id);
        insert con;

        // Simulating some other operations like updates or deletes
        // Let's update the Account
        acc.Description = 'Updated Description';
        update acc;

        // Let's delete the Contact
        delete con;
    }
}