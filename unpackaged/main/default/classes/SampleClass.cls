public class SampleClass {
    
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