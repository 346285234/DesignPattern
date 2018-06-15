import Foundation

public class ProxyPatternDemo {
    public static func main() {
        let image = ProxyImage(with: "1.jpg")
        image.display()
        
        image.display()
    }
}

protocol Image {
    func display()
}

class RealImage: Image {
    var filename: String
    
    init(with filename: String) {
        self.filename = filename
        loadFromDisk()
    }
    
    func display() {
        print("display \(filename)")
    }
    
    func loadFromDisk() {
        print("loading \(filename)")
    }
}

class ProxyImage: Image {
    private var realImage: RealImage?
    private var filename: String
    
    init(with filename: String) {
        self.filename = filename
    }
    
    func display() {
        if realImage == nil {
            realImage = RealImage(with: filename)
        }
        realImage?.display()
    }
}
