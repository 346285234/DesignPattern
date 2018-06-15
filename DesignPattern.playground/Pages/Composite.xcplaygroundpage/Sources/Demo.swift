import Foundation

public class CompositePatternDemo {
    public static func main() {
        let CEO = Employee(with: "paul", dept: "ceo", salary: 10000)
        let headSale = Employee(with: "john", dept: "head sale", salary: 5000)
        let headEnginer = Employee(with: "mike", dept: "head engineer", salary: 4000)
        
        let saleMan1 = Employee(with: "susan", dept: "sale", salary: 1000)
        let saleMan2 = Employee(with: "mike", dept: "sale", salary: 1000)
        
        let engineer1 = Employee(with: "jake", dept: "engineer", salary: 1000)
        let engineer2 = Employee(with: "allan", dept: "engineer", salary: 1000)
        
        CEO.add(e: headSale)
        CEO.add(e: headEnginer)
        
        headSale.add(e: saleMan1)
        headSale.add(e: saleMan2)
        
        headEnginer.add(e: engineer1)
        headEnginer.add(e: engineer2)
        
        print(CEO.toString())
        for header in CEO.getSubordinates() {
            print(header.toString())
            for normal in header.getSubordinates() {
                print(normal.toString())
            }
        }
    }
}

class Employee {
    private var name: String
    private var dept: String
    private var salary: Int
    private var subordinates: [Employee]
    
    init(with name: String, dept: String, salary: Int) {
        self.name = name
        self.dept = dept
        self.salary = salary
        subordinates = [Employee]()
    }
    
    func add(e: Employee) {
        subordinates.append(e)
    }
    
    func remove(e: Employee) {
        for (index, employee) in subordinates.enumerated() {
            if employee == e {
                subordinates.remove(at: index)
                return
            }
        }
        
    }
    
    func getSubordinates() -> [Employee] {
        return subordinates
    }
    
    func toString() -> String {
        return "Employee: [ Name: \(name), dept: \(dept), salary: \(salary)"
    }
}

extension Employee: Hashable {
    var hashValue: Int {
        return ObjectIdentifier(self).hashValue
    }
    
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        if lhs == rhs {
            return true
        }
        
        return false
    }
}
