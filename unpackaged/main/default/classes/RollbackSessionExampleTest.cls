@isTest
public class RollbackSessionExampleTest {
    @isTest
    static void testRollbackSession() {
        // Start a new database transaction
        Test.startTest();

        // Call the method that performs database operations
        RollbackSessionExample.performDatabaseOperations();

        // Retrieve the number of Accounts and Contacts after performing operations
        Integer accountsAfter = [SELECT count() FROM Account];
        Integer contactsAfter = [SELECT count() FROM Contact];

        // Assert that no changes were committed to the database within this transaction
        System.assertEquals(0, accountsAfter, 'No Account should be committed');
        System.assertEquals(0, contactsAfter, 'No Contact should be committed');

        // End the test transaction
        Test.stopTest();
    }
}