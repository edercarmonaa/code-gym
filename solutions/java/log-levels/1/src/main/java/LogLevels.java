public class LogLevels {
    
    public static String message(String logLine) {
        String[] arr = logLine.split(":\\s+");
       return arr[1].replaceAll("\\s+$", "");
    }

    public static String logLevel(String logLine) {
        String[] arr = logLine.split(":\\s+");
       return arr[0].replaceAll("^\\[\\s*(.*?)\\s*\\]$", "$1").toLowerCase();
    }

    public static String reformat(String logLine) {
       return message(logLine) + " (" +  logLevel(logLine)  +")";
    }
}
