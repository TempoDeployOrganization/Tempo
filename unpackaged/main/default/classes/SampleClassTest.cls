@isTest
public class SampleClassTest {
    
    // Test method to verify the addNumbers method
    @isTest
    static void testAddNumbers() {
        // Test data
        Integer input1 = 5;
        Integer input2 = 10;
        
        // Expected result
        Integer expectedResult = 15;
        
        // Call the method from the class
        Integer actualResult = SampleClass.addNumbers(input1, input2);
        
        //Debug log
        system.debug('Testing Class');
        
        // Verify the result
        System.assertEquals(expectedResult, actualResult, 'The addNumbers method did not return the expected result.');
    }
}