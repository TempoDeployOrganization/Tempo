@isTest
public class PolicyManagerTest {

    // This method runs before any test methods to set up test data
    @testSetup
    static void setupData() {
        // You can create a test Policy here if needed
        Policy testPolicy = new Policy(
            PolicyNumber = 'POL12345',
            PolicyType = 'Health',
            StartDate = Date.today(),
            EndDate = Date.today().addYears(1),
            Status = 'Active'
        );
        insert testPolicy;
    }

    // Test for creating a policy
    @isTest
    static void testCreatePolicy() {
        // Call createPolicy method to create a new policy
        Policy createdPolicy = PolicyManager.createPolicy('POL98765', 'Auto', Date.today(), Date.today().addMonths(6));
        
        // Query the created policy from the database
        Policy queriedPolicy = [SELECT Id, PolicyNumber, PolicyType, StartDate, EndDate FROM Policy WHERE Id = :createdPolicy.Id LIMIT 1];
        
        // Assert that the policy was created and the values are correct
        System.assertNotEquals(queriedPolicy, null, 'Policy should be created');
        System.assertEquals(queriedPolicy.PolicyNumber, 'POL98765', 'Policy number should match');
        System.assertEquals(queriedPolicy.PolicyType, 'Auto', 'Policy type should match');
    }

    // Test for validating a policy
    @isTest
    static void testIsValidPolicy() {
        // Create an invalid policy (End Date before Start Date)
        Policy invalidPolicy = new Policy(
            PolicyNumber = 'POL54321',
            PolicyType = 'Health',
            StartDate = Date.today().addDays(5),
            EndDate = Date.today().addDays(2),
            Status = 'Active'
        );
        
        Boolean isValid = PolicyManager.isValidPolicy(invalidPolicy);
        
        // Assert that the policy is not valid
        System.assertEquals(isValid, false, 'The policy should not be valid');
        
        // Create a valid policy (End Date after Start Date)
        Policy validPolicy = new Policy(
            PolicyNumber = 'POL11111',
            PolicyType = 'Life',
            StartDate = Date.today(),
            EndDate = Date.today().addYears(1),
            Status = 'Active'
        );
        
        isValid = PolicyManager.isValidPolicy(validPolicy);
        
        // Assert that the policy is valid
        System.assertEquals(isValid, true, 'The policy should be valid');
    }

    // Test for updating policy status
    @isTest
    static void testUpdatePolicyStatus() {
        // Query a policy for updating
        Policy policyToUpdate = [SELECT Id, Status FROM Policy LIMIT 1];
        
        // Update policy status
        PolicyManager.updatePolicyStatus(policyToUpdate.Id, 'Expired');
        
        // Query the updated policy
        Policy updatedPolicy = [SELECT Id, Status FROM Policy WHERE Id = :policyToUpdate.Id LIMIT 1];
        
        // Assert that the status has been updated
        System.assertEquals(updatedPolicy.Status, 'Expired', 'The policy status should be updated to Expired');
    }
}
