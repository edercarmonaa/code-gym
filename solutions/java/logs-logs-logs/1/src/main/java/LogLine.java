public class LogLine {
    private final LogLevel logLevel;
    private final String message;
    
    public LogLine(String logLine) {
        String code = logLine.substring(1, 4);

    // Evaluamos el código extraído
    switch (code) {
        case "TRC":
            this.logLevel = LogLevel.TRACE;
            break;
        case "DBG":
            this.logLevel = LogLevel.DEBUG;
            break;
        case "INF":
            this.logLevel = LogLevel.INFO;
            break;
        case "WRN":
            this.logLevel = LogLevel.WARNING;
            break;
        case "ERR":
            this.logLevel = LogLevel.ERROR;
            break;
        case "FTL":
            this.logLevel = LogLevel.FATAL;
            break;
        default:
            this.logLevel = LogLevel.UNKNOWN; // Valor por defecto
            break;
    }
        int messageStartIndex = logLine.indexOf("]:");
        if (messageStartIndex != -1) {
            this.message = logLine.substring(messageStartIndex + 2).trim();
        } else {
            this.message = "";
        }
    }

    public LogLevel getLogLevel() {
       return logLevel;  
    }

    public String getOutputForShortLog() {
       int encodedLevel = switch (this.logLevel) {
            case TRACE -> 1;
            case DEBUG -> 2;
            case INFO -> 4;
            case WARNING -> 5;
            case ERROR -> 6;
            case FATAL -> 42;
            default -> 0; 
        };
        return encodedLevel + ":" + this.message;
    }
}
