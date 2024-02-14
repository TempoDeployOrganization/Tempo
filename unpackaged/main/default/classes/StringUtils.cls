public class StringUtils {

    public static void logInfo(String message) {
        logMessage('INFO', message);

    }
	

    public static void logWarning(String message) {
        logMessage('WARNING', message);
    }

    public static void logError(String message) {
        logMessage('ERROR', message);
    }

    private static void logMessage(String logLevel, String message) {
        DateTime currentTime = DateTime.now();
        String logEntry = currentTime.format('yyyy-MM-dd HH:mm:ss') + ' [' + logLevel + '] ' + message;
        
        // In a real-world scenario, you might want to persist the log entry to a database or external service.
        // For simplicity, this example just prints the log entry to the debug log.
        System.debug(logEntry);
                System.debug(logEntry);

                System.debug(logEntry);

    }

}