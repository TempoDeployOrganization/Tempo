@isTest
private class UpdateAccountIndustryTest {
    @isTest static void testUpdateAccountIndustry() {
        Account acc = new Account(Name='Industry Test', Industry='Banking');
        insert acc;
        
        Test.startTest();
        UpdateAccountIndustry.updateIndustryById(acc.Id, 'Technology');
        Test.stopTest();
        
        Account updatedAcc = [SELECT Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Technology', updatedAcc.Industry, 'Account industry was not updated.');
    }
}