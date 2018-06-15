import Foundation

public class FacadePatternDemo {
    public static func main() {
        let maker = ShapeMaker()
        maker.drawCircle()
        maker.drawRectangle()
        maker.drawSquare()
        
    }
}

class ShapeMaker {
    private var circle: Shape
    private var rectangle: Shape
    private var square: Shape
    
    init() {
        self.circle = Circle()
        self.rectangle = Rectangle()
        self.square = Square()
    }
    
    func drawCircle() {
        circle.draw()
    }
    
    func drawRectangle() {
        rectangle.draw()
    }
    
    func drawSquare() {
        square.draw()
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
