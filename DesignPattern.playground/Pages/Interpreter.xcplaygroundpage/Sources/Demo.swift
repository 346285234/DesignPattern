import Foundation

public class InterpreterPatternDemo {
    public static func main() {
        print("John is male? \(getMaleExpression().interpret(with: "john"))")
        print("married julie? \(getMarriedWomanExpression().interpret(with: "married julie"))")
    }
    
    private static func getMaleExpression() -> Expression {
        let robert = TerminalExpression(with: "robert")
        let john = TerminalExpression(with: "john")
        return OrExpression(with: robert, expr2: john)
    }
    
    private static func getMarriedWomanExpression() -> Expression {
        let julie = TerminalExpression(with: "julie")
        let married = TerminalExpression(with: "married")
        return AndExpression(with: julie, expr2: married)
    }
    
}

protocol Expression {
    func interpret(with context: String) -> Bool
}

class TerminalExpression: Expression {
    private var data: String
    
    init(with data: String) {
        self.data = data
    }
    
    func interpret(with context: String) -> Bool {
        if context.contains(data) {
            return true
        }
        
        return false
    }
}

class OrExpression: Expression {
    private var expr1: Expression
    private var expr2: Expression
    
    init(with expr1: Expression, expr2: Expression) {
        self.expr1 = expr1
        self.expr2 = expr2
    }
    
    func interpret(with context: String) -> Bool {
        return expr1.interpret(with: context) || expr2.interpret(with: context)
    }
}

class AndExpression: Expression {
    private var expr1: Expression
    private var expr2: Expression
    
    init(with expr1: Expression, expr2: Expression) {
        self.expr1 = expr1
        self.expr2 = expr2
    }
    
    func interpret(with context: String) -> Bool {
        return expr1.interpret(with: context) && expr2.interpret(with: context)
    }
}
