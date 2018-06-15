import Foundation

public class DecoratorPatternDemo {
    public static func main() {
        let circle = Circle()
        circle.draw()
        let redCircle = RedShapeDecorator(with: Circle())
        redCircle.draw()
        let redRectangle = RedShapeDecorator(with: Rectangle())
        redRectangle.draw()
    }
}

protocol Shape {
    func draw()
}

class Circle: Shape {
    func draw() {
        print("circle")
    }
}

class Rectangle: Shape {
    func draw() {
        print("Rectangle")
    }
}

protocol ShapeDecorator {
    var decoratedShape: Shape { get set }
    init(with shape: Shape)
    func draw()
}

class RedShapeDecorator: ShapeDecorator {
    var decoratedShape: Shape
    
    required init(with shape: Shape) {
        self.decoratedShape = shape
    }
    
    func draw() {
        decoratedShape.draw()
        setRedBorder(with: decoratedShape)
    }
    func setRedBorder(with decoratedShape: Shape) {
        print("Border Color: Red")
    }
    
}
