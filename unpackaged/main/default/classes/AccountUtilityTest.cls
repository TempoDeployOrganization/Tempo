@isTest
private class AccountUtilityTest {
    @isTest static void testGetActiveAccounts() {
        Account testAccount = new Account(Name='Test Account');
        insert testAccount;
        
        Test.startTest();
        List<Account> accounts = AccountUtility.getActiveAccounts();
        Test.stopTest();
        
        System.assertEquals(1, accounts.size());
        System.assertEquals('Test Account', accounts[0].Name);
    }
}