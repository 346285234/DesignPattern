import Foundation

public class ChainPatternDemo {
    public static func main() {
        let loggerChain = getChainOfLoggers()
        loggerChain.logMessage(level: AbstractLogger.INFO, message: "this is a information")
        loggerChain.logMessage(level: AbstractLogger.DEBUG, message: "debug infor")
        loggerChain.logMessage(level: AbstractLogger.ERROR, message: "error message")
    }
    
    private static func getChainOfLoggers() -> AbstractLogger {
        let errorLogger = ErrorLogger(with: AbstractLogger.ERROR)
        let fileLogger = FileLogger(with: AbstractLogger.DEBUG)
        let consoleLogger = ConsoleLogger(with: AbstractLogger.INFO)

        errorLogger.nextLogger = fileLogger
        fileLogger.nextLogger = consoleLogger
        
        return errorLogger
    }
}

class AbstractLogger {
    
    var level: Int
    var nextLogger: AbstractLogger?
    
    init(with level: Int) {
        self.level = level
    }
    
    func write(with message: String) { fatalError() }
}

extension AbstractLogger {
    static var INFO: Int {
        return 1
    }
    
    static var DEBUG: Int {
        return 2
    }
    
    static var ERROR: Int {
        return 3
    }
    
    func logMessage(level: Int, message: String) {
        if self.level <= level {
            write(with: message)
        }
        
        if nextLogger != nil {
            nextLogger?.logMessage(level: level, message: message)
        }
    }
}

class ConsoleLogger: AbstractLogger {
    override func write(with message: String) {
        print("Console Logger: \(message)")
    }
}

class ErrorLogger: AbstractLogger {
    override func write(with message: String) {
        print("Error Logger: \(message)")
    }
}

class FileLogger: AbstractLogger {
    override func write(with message: String) {
        print("File Logger: \(message)")
    }
}
