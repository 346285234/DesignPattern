import Foundation

public class BusinessDelegatePatternDemo {
    public static func main() {
        let delegate = BusinessDelegate()
        delegate.setServiceType(type: "ejb")
        
        let client = Client(with: delegate)
        client.doTask()
        
        delegate.setServiceType(type: "jms")
        client.doTask()
    }
}

protocol BusinessService {
    func doProcessing()
}

class EJBService: BusinessService {
    func doProcessing() {
        print("process EJB service")
    }
}

class JMSService: BusinessService {
    func doProcessing() {
        print("process JMS service")
    }
}

class BusinessLookup {
    func getBusinessService(with serviceType: String) -> BusinessService {
        if serviceType == "ejb" {
            return EJBService()
        } else {
            return JMSService()
        }
    }
}

class BusinessDelegate {
    private var lookup = BusinessLookup()
    private var service: BusinessService?
    private var serviceType: String?
    func setServiceType(type: String) {
        serviceType = type
    }
    
    func doTask() {
        if let serviceType = serviceType {
            service = lookup.getBusinessService(with: serviceType)
            service?.doProcessing()
        }
    }
}

class Client {
    var serviceDelegate: BusinessDelegate
    init(with serviceDelegate: BusinessDelegate) {
        self.serviceDelegate = serviceDelegate
    }
    
    func doTask() {
        serviceDelegate.doTask()
    }
}
