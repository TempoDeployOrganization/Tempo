@isTest
public class SampleClassTest {

    @isTest
    static void testDefaultConstructor() {
        // Instantiate the SampleClass using the default constructor
        SampleClass sampleInstance = new SampleClass();
        
        // Verify that the greeting message is as expected
        System.assertEquals('Hello, Salesforce!', sampleInstance.getGreetingMessage());
    }

    @isTest
    static void testParameterizedConstructor() {
        // Instantiate the SampleClass using the parameterized constructor
        SampleClass sampleInstance = new SampleClass('Custom Greeting');
        
        // Verify that the greeting message is as expected
        System.assertEquals('Custom Greeting', sampleInstance.getGreetingMessage());
    }

    @isTest
    static void testSetterMethod() {
        // Instantiate the SampleClass
        SampleClass sampleInstance = new SampleClass();
        
        // Set a new greeting message using the setter method
        sampleInstance.setGreetingMessage('New Greeting');
        
        // Verify that the greeting message is updated
        System.assertEquals('New Greeting', sampleInstance.getGreetingMessage());
    }

    @isTest
    static void testDisplayGreetingMethod() {
        // Instantiate the SampleClass
        SampleClass sampleInstance = new SampleClass('Testing Display Greeting');
        
        // Call the displayGreeting method
        sampleInstance.displayGreeting();
        
        // No assertion is performed here, as the method prints to the debug logs
    }
}