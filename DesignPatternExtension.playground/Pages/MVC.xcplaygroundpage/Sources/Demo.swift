import Foundation

public class MVCPatternDemo {
    public static func main() {
        let student = retrieveStudentFromDatabase()
        let view = StudentView()
        
        let controller = StudentController(model: student, view: view)
        controller.updateView()
        
        controller.model.name = "jk"
        controller.updateView()
    }
    
    private static func retrieveStudentFromDatabase() -> Student {
        let student = Student()
        student.rollNo = "7"
        student.name = "paul"
        return student
    }
}

class Student {
    private var _rollNo: String = ""
    var rollNo: String {
        get {
            return _rollNo
        }
        set {
            _rollNo = newValue
        }
    }
    
    private var _name: String = ""
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue
        }
    }
}

class StudentView {
    func printStudentDetails(rollNo: String, name: String) {
        print("Student: [rollNo: \(rollNo), name: \(name)]")
    }
}

class StudentController {
    var model: Student
    var view: StudentView
    
    init(model: Student, view: StudentView) {
        self.model = model
        self.view = view
    }
    
    func updateView() {
        view.printStudentDetails(rollNo: model.rollNo, name: model.name)
    }
}
