import Foundation

public class VisitorPatternDemo {
    public static func main() {
        let computer = Computer()
        computer.accept(with: ComputerPartDisplayVisitor())
    }
}

protocol ComputerPart {
    func accept(with visitor: ComputerPartVisitor)
}

class Computer: ComputerPart {
    var parts: [ComputerPart]
    
    init() {
        parts = [Mouse(), Keyboard(), Monitor()]
    }
    
    func accept(with visitor: ComputerPartVisitor) {
        _ = parts.map() { $0.accept(with: visitor) }
        visitor.visit(with: self)
    }
}

class Keyboard: ComputerPart {
    func accept(with visitor: ComputerPartVisitor) {
        visitor.visit(with: self)
    }
}

class Mouse: ComputerPart {
    func accept(with visitor: ComputerPartVisitor) {
        visitor.visit(with: self)
    }
}

class Monitor: ComputerPart {
    func accept(with visitor: ComputerPartVisitor) {
        visitor.visit(with: self)
    }
}

protocol ComputerPartVisitor {
    func visit(with computer: Computer)
    func visit(with mouse: Mouse)
    func visit(with keyboard: Keyboard)
    func visit(with monitor: Monitor)
}

class ComputerPartDisplayVisitor: ComputerPartVisitor {
    func visit(with computer: Computer) {
        print("display computer")
    }
    
    func visit(with mouse: Mouse) {
        print("display mouse")
    }
    
    func visit(with keyboard: Keyboard) {
        print("display keyboard")
    }
    
    func visit(with monitor: Monitor) {
        print("display monitor")
    }
}

