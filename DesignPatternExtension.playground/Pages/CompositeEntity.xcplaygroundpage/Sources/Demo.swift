import Foundation

public class CompositeEntityPatternDemo {
    public static func main() {
        let client = Client()
        client.setData(data1: "a", data2: "b")
        client.printData()
        client.setData(data1: "c", data2: "d")
        client.printData()
    }
}

class Client {
    private var compositeEntity = CompositeEntity()
    
    func printData() {
        _ = compositeEntity.getData().map() { print("Data: \($0)") }
    }
    
    func setData(data1: String, data2: String) {
        compositeEntity.setData(data1: data1, data2: data2)
    }
}

class CompositeEntity {
    private var cgo = CoarseGrainedObject()
    
    func setData(data1: String, data2: String) {
        cgo.setData(data1: data1, data2: data2)
    }
    
    func getData() -> [String?] {
        return cgo.getData()
    }
}

class CoarseGrainedObject {
    let object1 = DependentObject1()
    let object2 = DependentObject2()
    
    func setData(data1: String, data2: String) {
        object1.data = data1
        object2.data = data2
    }
    
    func getData() -> [String?] {
        return [object1.data, object2.data]
    }
}

class DependentObject1 {
    private var _data: String?
    var data: String? {
        get {
            return _data
        }
        set {
            _data = newValue
        }
    }
    
}

class DependentObject2 {
    private var _data: String?
    var data: String? {
        get {
            return _data
        }
        set {
            _data = newValue
        }
    }
}
