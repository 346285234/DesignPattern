import Foundation

public class IteratorPatternDemo {
    public static func main() {
        let nameRepository = NameRepository()
        let iter = nameRepository.getIterator()
        while iter.hasNext() {
            let name = iter.next()
            print("Name: \(name)")
        }
        
    }
}

protocol Iterator {
    func hasNext() -> Bool
    func next() -> Any?
}

protocol Container {
    func getIterator() -> Iterator
}

class NameRepository: Container {
    static var names = ["Robert", "John", "Julie", "Lora"]
    
    func getIterator() -> Iterator {
        return NameIterator()
    }
    
    private class NameIterator: Iterator {
        var index = 0
        
        func hasNext() -> Bool {
            if index < names.count {
                return true
            }
            
            return false
        }
        
        func next() -> Any? {
            if hasNext() {
                let name = names[index]
                index += 1
                return name
            }
            
            return nil
        }
    }
}
