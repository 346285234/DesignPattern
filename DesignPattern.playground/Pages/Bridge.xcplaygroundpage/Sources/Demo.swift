import Foundation

public class BrigePatternDemo {
    public static func main() {
        let redCircle = Circle(x: 0, y: 0, radius: 1, drawAPI: RedCircle())
        redCircle.draw()
        
        let greenCircle = Circle(x: 0, y: 0, radius: 1, drawAPI: GreenCircle())
        greenCircle.draw()
    }
}

protocol DrawAPI {
    func drawCircle(with radius: Float, x: Float, y: Float)
}

class RedCircle: DrawAPI {
    func drawCircle(with radius: Float, x: Float, y: Float) {
        print("Draw red circle, x: \(x), y: \(y), radius: \(radius)")
    }
}

class GreenCircle: DrawAPI {
    func drawCircle(with radius: Float, x: Float, y: Float) {
        print("Draw green circle, x: \(x), y: \(y), radius: \(radius)")
    }
}

protocol Shape {
    var drawAPI: DrawAPI { get set }
    func draw()
}

class Circle: Shape {
    var drawAPI: DrawAPI
    private var x, y, radius: Float
    
    init(x: Float, y: Float, radius: Float, drawAPI: DrawAPI) {
        self.drawAPI = drawAPI
        self.x = x
        self.y = y
        self.radius = radius
    }
    
    func draw() {
        drawAPI.drawCircle(with: radius, x: x, y: y)
    }
}
