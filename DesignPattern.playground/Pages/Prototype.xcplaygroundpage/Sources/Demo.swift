import Foundation

protocol Shape: NSCopying {
    var id: String? { get set }
    var type: String { get set }
    
    func draw()
}

extension Shape {
    func getID() -> String? {
        return id
    }
    
    func setID(id: String) {
        self.id = id
    }
    
    func getType() -> String {
        return type
    }
}

class Circle: Shape {
    var id: String?
    var type: String

    init() {
        type = "circle"
    }
    
    func draw() {
        print("circle")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Circle()
    }
}

class Rectangle: Shape {
    var id: String?
    var type: String
    
    init() {
        type = "rectangle"
    }
    
    func draw() {
        print("rectangle")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Rectangle()
    }
}

class Squre: Shape {
    var id: String?
    var type: String
    
    init() {
        type = "squre"
    }
    
    func draw() {
        print("squre")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Squre()
    }
}

class ShapeCache {
    static var shapeDic = [String: Shape]()
    
    static func getShape(id: String) -> Shape? {
        let shape = shapeDic[id]
        return shape
    }
    
    static func loadCache() {
        let circle = Circle()
        circle.setID(id: "1")
        shapeDic[circle.getID()!] = circle
        
        let rectangle = Rectangle()
        rectangle.setID(id: "2")
        shapeDic[rectangle.getID()!] = rectangle
        
        let squre = Squre()
        squre.setID(id: "3")
        shapeDic[squre.getID()!] = squre
    }
}

public class PrototypeDemo {
    public static func main() {
        ShapeCache.loadCache()
        
        let cloneShape = ShapeCache.getShape(id: "1")?.copy() as? Shape
        cloneShape?.draw()
        print(cloneShape?.getID())
    }
}
