@isTest
public class RollbackSessionExampleTest {
    @isTest
    static void testCalculateYearlyRent() {
        // Create an instance of the Apartment class
        RollbackSessionExample apt = new RollbackSessionExample('Test Apartment', 2, 1500);
        
        // Call the calculateYearlyRent method and assert the result
        Decimal yearlyRent = apt.calculateYearlyRent();
        System.assertEquals(18000, yearlyRent, 'Yearly rent should be 18000 for 1500 monthly rent');
    }
}