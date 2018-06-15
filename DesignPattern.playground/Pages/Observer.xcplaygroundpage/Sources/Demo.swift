import Foundation

public class ObserverPatternDemo {
    public static func main() {
        let subject = Subject()
        _ = BinaryObserver(with: subject)
        _ = OctalObserver(with: subject)
        _ = HexObserver(with: subject)
        
        print("state change")
        subject.state = 10
        print("state change")
        subject.state = 20
        
    }
}

class Observer {
    var subject: Subject
    init(with subject: Subject) {
        self.subject = subject
        subject.attach(with: self)
    }
    
    func update() { fatalError() }
}

class OctalObserver: Observer {
    override func update() {
        print("Binary observe status: \(subject.state)")
    }
}

class BinaryObserver: Observer {
    override func update() {
        print("Octal observe status: \(subject.state)")
    }
}

class HexObserver: Observer {
    override func update() {
        print("Hex observe status: \(subject.state)")
    }
}

class Subject {
    private var observers = [Observer]()
    private var _state: Int?
    var state: Int? {
        get {
            return _state
        }
        set {
            _state = newValue
            notifyAllObservers()
        }
    }
    
    func attach(with observer: Observer) {
        observers.append(observer)
    }
    
    func notifyAllObservers() {
        _ = observers.map() { $0.update() }
    }
}
