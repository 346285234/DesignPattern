import Foundation

public class StrategyPatternDemo {
    public static func main() {
        let num1 = 10
        let num2 = 5
        
        var context = Context(with: OperationAdd())
        print("\(num1) + \(num2) = \(context.executeStrategy(num1: num1, num2: num2))")
        
        context = Context(with: OperationSubstract())
        print("\(num1) - \(num2) = \(context.executeStrategy(num1: num1, num2: num2))")
        
        context = Context(with: OperationMultiply())
        print("\(num1) * \(num2) = \(context.executeStrategy(num1: num1, num2: num2))")
    }
}

class Context {
    var strategy: Strategy
    
    init(with strategy: Strategy) {
        self.strategy = strategy
    }
    
    func executeStrategy(num1: Int, num2: Int) -> Int {
        return strategy.doOperation(num1: num1, num2: num2)
    }
}

protocol Strategy {
    func doOperation(num1: Int, num2: Int) -> Int
}

class OperationAdd: Strategy {
    func doOperation(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}

class OperationSubstract: Strategy {
    func doOperation(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
}

class OperationMultiply: Strategy {
    func doOperation(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
}
