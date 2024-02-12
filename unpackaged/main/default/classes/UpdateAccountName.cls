public class UpdateAccountName {
    public static void updateAccountNameById(Id accountId, String newName) {
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Name = newName;
        update acc;
    }
}