
import Foundation

protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print("circle")
    }
}

class Square: Shape {
    func draw() {
        print("square")
    }
}

class Rectangle: Shape {
    func draw() {
        print("rectangle")
    }
}

class ShapeFactory {
    func getShape(type: String) -> Shape? {
        if type == "circle" {
            return Circle()
        } else if type == "square" {
            return Square()
        } else if type == "rectangle" {
            return Rectangle()
        }
        
        return nil
    }
}

public class FactoryPatternDemo {
    public static func main() {
        let factory = ShapeFactory()
        let circle = factory.getShape(type: "circle")
        circle?.draw()
    }
}
