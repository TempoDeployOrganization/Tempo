public class PolicyManager {
    
    // Method to create a new Policy
    public static Policy createPolicy(String policyNumber, String policyType, Date startDate, Date endDate) {
        Policy newPolicy = new Policy(
            PolicyNumber = policyNumber,
            PolicyType = policyType,
            StartDate = startDate,
            EndDate = endDate,
            Status = 'Active'
        );
        
        // Insert policy record into Salesforce
        try {
            insert newPolicy;
        } catch (DmlException e) {
            System.debug('Error inserting policy: ' + e.getMessage());
        }
        
        return newPolicy;
    }

    // Method to check if a Policy is valid based on some business logic (e.g., end date should not be before start date)
    public static Boolean isValidPolicy(Policy policy) {
        if (policy.StartDate >= policy.EndDate) {
            return false;
        }
        return true;
    }

    // Method to update Policy status
    public static void updatePolicyStatus(Id policyId, String status) {
        Policy policyToUpdate = [SELECT Id, Status FROM Policy WHERE Id = :policyId LIMIT 1];
        policyToUpdate.Status = status;
        update policyToUpdate;
    }
}
