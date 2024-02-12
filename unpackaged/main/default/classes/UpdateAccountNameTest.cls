@isTest
private class UpdateAccountNameTest {
    @isTest static void testUpdateAccountName() {
        Account acc = new Account(Name='Test Account');
        insert acc;
        
        Test.startTest();
        UpdateAccountName.updateAccountNameById(acc.Id, 'Updated Name');
        Test.stopTest();
        
        Account updatedAcc = [SELECT Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Updated Name', updatedAcc.Name, 'Account name was not updated correctly.');
    }
}