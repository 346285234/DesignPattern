
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

protocol Color {
    func fill()
}

class Red: Color {
    func fill() {
        print("red")
    }
}

class Green: Color {
    func fill() {
        print("green")
    }
}

class Blue: Color {
    func fill() {
        print("blue")
    }
}

protocol AbstractFactory {
    func getShape(type: String) -> Shape?
    func getColor(type: String) -> Color?
}

extension AbstractFactory {
    func getShape(type: String) -> Shape? { return nil }
    func getColor(type: String) -> Color? { return nil }
}

class ShapeFactory: AbstractFactory {
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

class ColorFactory: AbstractFactory {
    func getColor(type: String) -> Color? {
        if type == "red" {
            return Red()
        } else if type == "green" {
            return Green()
        } else if type == "blue" {
            return Blue()
        }
        
        return nil
    }
}

class FactoryProducer {
    static func getFactory(type: String) -> AbstractFactory? {
        if type == "shape" {
            return ShapeFactory()
        } else if type == "color" {
            return ColorFactory()
        }
        
        return nil
    }
}

public class AbstractFactoryPatternDemo {
    public static func main() {
        let shape = FactoryProducer.getFactory(type: "shape")
        let circle = shape?.getShape(type: "circle")
        circle?.draw()
        
        let color = FactoryProducer.getFactory(type: "color")
        let blue = color?.getColor(type: "blue")
        blue?.fill()
    }
}
