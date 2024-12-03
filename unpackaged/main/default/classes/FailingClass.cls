public class FailingClass {
    
    public void failMethod() {
        // Intentionally throw an exception to simulate failure
        throw new CustomException('This is a forced failure for testing purposes.');
    }

    // Custom exception class
    public class CustomException extends Exception {}
}
