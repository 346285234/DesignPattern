import Foundation

public class AdapterPatternDemo {
    public static func main() {
        let player = AudioPlayer()
        
        player.play(with: "mp3", filename: "1")
        player.play(with: "mp4", filename: "2")
        player.play(with: "vic", filename: "3")
    }
}

protocol MediaPlayer {
    func play(with type: String, filename: String)
}

class AudioPlayer: MediaPlayer {
    
    var mediaAdapter: MediaAdapter?
    
    func play(with type: String, filename: String) {
        if type == "mp3" {
            print("play \(filename).mp3")
        } else if type == "mp4" || type == "vic" {
            mediaAdapter = MediaAdapter(with: type)
            mediaAdapter?.play(with: type, filename: filename)
        } else {
            print("not support type")
        }
    }
}

class MediaAdapter: MediaPlayer {
    
    var advancedMediaPlayer: AdvancedMediaPlayer?
    
    init(with type: String) {
        if type == "mp4" {
            advancedMediaPlayer = Mp4Player()
        } else if type == "vic" {
            advancedMediaPlayer = VicPlayer()
        }
    }
    
    func play(with type: String, filename: String) {
        if type == "mp4" {
            advancedMediaPlayer?.playMp4(with: filename)
        } else if type == "vic" {
            advancedMediaPlayer?.playVic(with: filename)
        }
    }
}

protocol AdvancedMediaPlayer {
    func playVic(with filename: String)
    func playMp4(with filename: String)
}

class VicPlayer: AdvancedMediaPlayer {
    func playVic(with filename: String) {
        print("play \(filename).vic")
    }
    
    func playMp4(with filename: String) {
    }
}

class Mp4Player: AdvancedMediaPlayer {
    func playVic(with filename: String) {
    }
    
    func playMp4(with filename: String) {
        print("play \(filename).mp4")
    }
}

