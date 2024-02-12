public class SampleClass {
    // Method to add two numbers
    public static Integer addNumbers(Integer num1, Integer num2) {
        system.debug('Testing Class');
        return num1 + num2;
    
    // Class variables
    private String greetingMessage;
    
    // Constructor
    public SampleClass() {
        // Default constructor
        greetingMessage = 'Hello, Salesforce!';
    }
    
    // Parameterized constructor
    public SampleClass(String customMessage) {
        greetingMessage = customMessage;
    }
    
    // Method to display the greeting message
    public void displayGreeting() {
        System.debug(greetingMessage);
    }
    
    // Getter method for greeting message
    public String getGreetingMessage() {
        return greetingMessage;
    }
    
    // Setter method for greeting message
    public void setGreetingMessage(String newMessage) {
        greetingMessage = newMessage;
    }
}