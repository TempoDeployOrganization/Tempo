@isTest
public class OperationsTest {

    @isTest
    static void testAddNumbers() {
        Integer result = Operations.addNumbers(2, 3);
        System.assertEquals(5, result, 'Adding two numbers failed');
    }

    @isTest
    static void testMultiplyNumbers() {
        Integer result = Operations.multiplyNumbers(2, 3);
        System.assertEquals(6, result, 'Multiplying two numbers failed');
    }
}