import Foundation

public class CriteriaPatternDemo {
    public static func main() {
        var persons = [Person]()
        
        let mike = Person(with: "mike", gender: "male", maritalStatus: "single")
        persons.append(mike)
        let john = Person(with: "john", gender: "male", maritalStatus: "single")
        persons.append(john)
        let luna = Person(with: "luna", gender: "female", maritalStatus: "single")
        persons.append(luna)
        let susan = Person(with: "susan", gender: "female", maritalStatus: "married")
        persons.append(susan)
        let jake = Person(with: "jake", gender: "male", maritalStatus: "married")
        persons.append(jake)
        let yan = Person(with: "yan", gender: "female", maritalStatus: "single")
        persons.append(yan)
        
        let male = CriteriaMale()
        let female = CriteriaFemale()
        let single = CriteriaSingle()
        let singleMale = AndCriteria(with: single, other: male)
        let singleOrFemale = OrCriteria(with: single, other: female)
        
        printAll(with: male.meetCriteria(with: persons))
        printAll(with: singleMale.meetCriteria(with: persons))
        printAll(with: singleOrFemale.meetCriteria(with: persons))
    }
    
    static func printAll(with persons: [Person]) {
        print("Persons:")
        _ = persons.map() { print("name: \($0.getName()), gender: \($0.getGender()), maritalStatus: \($0.getMaritalStatus())") }
    }
}

class Person {
    private var name: String
    private var gender: String
    private var maritalStatus: String
    
    init(with name: String, gender: String, maritalStatus: String) {
        self.name = name
        self.gender = gender
        self.maritalStatus = maritalStatus
    }
    
    func getName() -> String {
        return name
    }
    
    func getGender() -> String {
        return gender
    }
    
    func getMaritalStatus() -> String {
        return maritalStatus
    }
}

extension Person: Hashable {
    var hashValue: Int {
        return ObjectIdentifier(self).hashValue
    }

    static func ==(lhs: Person, rhs: Person) -> Bool {
        if lhs == rhs {
            return true
        }
        
        return false
    }
}

protocol Criteria {
    func meetCriteria(with persons: [Person]) -> [Person]
}

class CriteriaMale: Criteria {
    func meetCriteria(with persons: [Person]) -> [Person] {
        return persons.filter() { $0.getGender() == "male" }
    }
}

class CriteriaFemale: Criteria {
    func meetCriteria(with persons: [Person]) -> [Person] {
        return persons.filter() { $0.getGender() == "female" }
    }
}

class CriteriaSingle: Criteria {
    func meetCriteria(with persons: [Person]) -> [Person] {
        return persons.filter() { $0.getMaritalStatus() == "single" }
    }
}

class AndCriteria: Criteria {
    private var criteria: Criteria
    private var otherCriteria: Criteria
    
    init(with criteria: Criteria, other: Criteria) {
        self.criteria = criteria
        self.otherCriteria = other
    }
    
    func meetCriteria(with persons: [Person]) -> [Person] {
        let filterPerson = criteria.meetCriteria(with: persons)
        return otherCriteria.meetCriteria(with: filterPerson)
    }
}

class OrCriteria: Criteria {
    private var criteria: Criteria
    private var otherCriteria: Criteria
    
    init(with criteria: Criteria, other: Criteria) {
        self.criteria = criteria
        self.otherCriteria = other
    }
    
    func meetCriteria(with persons: [Person]) -> [Person] {
        let first = criteria.meetCriteria(with: persons)
        let second = otherCriteria.meetCriteria(with: persons)
        let unionSet = Set(first).union(Set(second))
        return Array(unionSet)
        
    }
}
