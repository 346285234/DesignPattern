import Foundation

public class MediatorPatternDemo {
    public static func main() {
        let jake = User(with: "jake")
        let lucy = User(with: "lucy")
        
        jake.sendMessage(with: "hi")
        lucy.sendMessage(with: "hi too")
    }
}

class User {
    var name: String
    
    init(with name: String) {
        self.name = name
    }
    
    func sendMessage(with message: String) {
        ChatRoom.showMessage(with: self, message: message)
    }
}

class ChatRoom {
    static func showMessage(with user: User, message: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let timeString = formatter.string(from: Date())
        print(timeString + ": [user: \(user.name), message: \(message)]")
    }
}
