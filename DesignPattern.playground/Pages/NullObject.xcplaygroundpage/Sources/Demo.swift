import Foundation

public class NullPatternDemo {
    public static func main() {
        let customer1 = CustomerFactory.getCustomer(with: "rob")
        let customer2 = CustomerFactory.getCustomer(with: "joe")
        let customer3 = CustomerFactory.getCustomer(with: "kk")
        let customer4 = CustomerFactory.getCustomer(with: "julie")
        
        print("Customers")
        print(customer1.name)
        print(customer2.name)
        print(customer3.name)
        print(customer4.name)
    }
}

class CustomerFactory {
    static var names = ["rob", "joe", "julie"]
    static func getCustomer(with name: String) -> AbstractCustomer {
        for constname in names {
            if name == constname {
                return RealCustomer(with: name)
            }
        }
        
        return NullCustomer()
    }
}

protocol AbstractCustomer {
    var name: String? { get }
    func isNil() -> Bool
}

class RealCustomer: AbstractCustomer {
    var _name: String?
    var name: String? {
        get {
            return _name
        }
        set {
            _name = newValue
        }
        
    }
    
    init(with name: String) {
        self.name = name
    }
    
    func isNil() -> Bool {
        return false
    }
}

class NullCustomer: AbstractCustomer {
    var name: String? {
        get {
            return nil
        }
    }
    
    func isNil() -> Bool {
        return true
    }
}
