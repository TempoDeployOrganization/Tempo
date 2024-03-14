@isTest
private class MathOperationsTest {
    
    @isTest
    static void testAddition() {
        Integer result = MathOperations.add(5, 3);
        System.assertEquals(8, result, 'Addition result is incorrect');
    }
    
    @isTest
    static void testSubtraction() {
        Integer result = MathOperations.subtract(10, 3);
        System.assertEquals(7, result, 'Subtraction result is incorrect');
    }
    
    @isTest
    static void testMultiplication() {
        Integer result = MathOperations.multiply(5, 3);
        System.assertEquals(15, result, 'Multiplication result is incorrect');
    }
    
    @isTest
    static void testDivision() {
        Decimal result = MathOperations.divide(10, 2);
        System.assertEquals(5.0, result, 'Division result is incorrect');
        
        // Test division by zero
        Boolean exceptionThrown = false;
        try {
            MathOperations.divide(10, 0);
        } catch (Exception e) {
            exceptionThrown = true;
        }
        System.assertEquals(true, exceptionThrown, 'Division by zero should throw an exception');
    }
}