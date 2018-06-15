import Foundation

public class FlyweightPatternDemo {
    private static let colors = ["Red", "Green", "Blue", "White", "Black"]
    
    public static func main() {
        for _ in 1...10 {
            let circle = ShapeFactory.getCircle(with: getRandomColor()) as! Circle
            circle.x = getRandomNumber()
            circle.y = getRandomNumber()
            circle.radius = getRandomNumber()
            circle.draw()
        }
        
    }
    
    private static func getRandomColor() -> String {
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
    
    private static func getRandomNumber() -> Int {
        return Int(arc4random_uniform(100))
    }
}

protocol Shape {
    func draw()
}

class Circle: Shape {
    var x, y, radius: Int?
    private var color: String
    
    init(with color: String) {
        self.color = color
    }
    
    func draw() {
        print("Circle: [x: \(x), y: \(y), radius: \(radius), color: \(color)]")
    }
}

class ShapeFactory {
    private static var circleMap = [String: Shape]()
    
    static func getCircle(with color: String) -> Shape {
        var circle = circleMap[color]
        if circle == nil {
            circle = Circle(with: color)
            circleMap[color] = circle
            print("create circle of color: \(color))")
        }
        
        return circle!
    }
}
