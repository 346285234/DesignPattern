import Foundation

public class StatePatternDemo {
    public static func main() {
        let context = Context()
        let startState = StartState()
        startState.doAction(with: context)
        print(context.state?.description)
        let stopState = StopState()
        stopState.doAction(with: context)
        print(context.state?.description)
    }
}

protocol State: CustomStringConvertible {
    func doAction(with context: Context)
}

class StartState: State {
    func doAction(with context: Context) {
        print("start state")
        context.state = self
    }
    
    var description: String { return "Descrpiton: start state"}
}

class StopState: State {
    func doAction(with context: Context) {
        print("stop state")
        context.state = self
    }
    
    var description: String { return "Descrpiton: stop state"}
}

class Context {
    private var _state: State?
    var state: State? {
        get {
            return _state
        }
        set {
            _state = newValue
        }
    }
    
    init() {
        self.state = nil
    }
    
}
