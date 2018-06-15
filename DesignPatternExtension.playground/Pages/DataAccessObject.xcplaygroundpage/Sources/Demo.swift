import Foundation

public class DataAccessObjectPatternDemo {
    public static func main() {
        
    }
}

class Student {
    
    private var _rollNo: String
    var rollNo: String {
        get {
            return _rollNo
        }
        set {
            _rollNo = newValue
        }
    }
    
    private var _name: String
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
    
    
    init(name: String, rollNo: String) {
        _name = name
        _rollNo = rollNo
    }
}

protocol StudentDao {
    func getAllStudents() -> [Student]
    func updateStudent(with student: Student)
    func deleteStudent(with student: Student)
    func addStudent(with student: Student)
}

