public class AccountUtility {
    public static List<Account> getActiveAccounts() {
        return [SELECT Id, Name FROM Account];
    }
}