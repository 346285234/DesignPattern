import Foundation

public class TemplatePatternDemo {
    public static func main() {
        var game: Game = Cricket()
        game.play()
        
        game = Football()
        game.play()
    }
}

protocol Game {
    func initialize()
    func startPlay()
    func endPlay()
}

extension Game {
    func play() {
        initialize()
        startPlay()
        endPlay()
    }
}

class Cricket: Game {
    func initialize() {
        print("Cricket Game Initialized")
    }
    
    func startPlay() {
        print("Cricket Game start play")
    }
    
    func endPlay() {
        print("Cricket Game end play")
    }
}

class Football: Game {
    func initialize() {
        print("Football Game Initialized")
    }
    
    func startPlay() {
        print("Football Game start play")
    }
    
    func endPlay() {
        print("Football Game end play")
    }
}
