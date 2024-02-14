@isTest
public class StringUtilsTest {

    @isTest
    static void testLogInfo() {
        Test.startTest();
        StringUtils.logInfo('Test INFO message');
        Test.stopTest();
        // You can add assertions or check debug logs to verify the behavior
    }

    @isTest
    static void testLogWarning() {
        Test.startTest();
        StringUtils.logWarning('Test WARNING message');
        Test.stopTest();
        // You can add assertions or check debug logs to verify the behavior
    }

    @isTest
    static void testLogError() {
        Test.startTest();
        StringUtils.logError('Test ERROR message');
        Test.stopTest();
        // You can add assertions or check debug logs to verify the behavior
    }
}