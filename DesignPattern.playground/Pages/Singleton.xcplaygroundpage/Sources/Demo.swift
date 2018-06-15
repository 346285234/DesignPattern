
import Foundation

class SingleObject {
    
    private static var instance = SingleObject()
    
    private init() {
    }
    
    static func getInstance() -> SingleObject {
        return instance
    }
    
    func showMessage() {
        print("singleObject")
    }
}

public class SingletonPatternDemo {
    public static func main() {
        let instance = SingleObject.getInstance()
        instance.showMessage()
    }
}
