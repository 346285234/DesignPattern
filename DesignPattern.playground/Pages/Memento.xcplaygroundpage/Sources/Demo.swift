import Foundation

public class MementoPatternDemo {
    public static func main() {
        let originator = Originator()
        let careTaker = CareTaker()
        originator.state = "State #1"
        originator.state = "State #2"
        careTaker.add(memento: originator.saveStateToMemento())
        originator.state = "State #3"
        careTaker.add(memento: originator.saveStateToMemento())
        originator.state = "State #4"
        
        print("Current state: \(originator.state)")
        originator.loadStateFromMemento(memento: careTaker.get(in: 0))
        print("first store state: \(originator.state)")
        originator.loadStateFromMemento(memento: careTaker.get(in: 1))
        print("second store state: \(originator.state)")
    }
}

class Originator {
    var state: String = ""
    
    func saveStateToMemento() -> Memento {
        return Memento(with: state)
    }
    
    func loadStateFromMemento(memento: Memento) {
        state = memento.getState()
    }
}

class Memento {
    private var state: String
    
    init(with state: String) {
        self.state = state
    }
    
    func getState() -> String {
        return state
    }
}

class CareTaker {
    var mementoList = [Memento]()
    
    func add(memento: Memento) {
        mementoList.append(memento)
    }
    
    func get(in index: Int) -> Memento {
        return mementoList[index]
    }
}
