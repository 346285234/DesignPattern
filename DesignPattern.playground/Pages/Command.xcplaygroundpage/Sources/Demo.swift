import Foundation

public class CommandPatternDemo {
    public static func main() {
        let stock = Stock()
        
        let buyStock = BuyStock(with: stock)
        let sellStock = SellStock(with: stock)
        
        let broker = Broker()
        broker.takeOrder(with: buyStock)
        broker.takeOrder(with: sellStock)
        
        broker.placeOrders()
    }
}

struct Stock {
    var name: String = "abc"
    var quantity: Int = 10
    
    func buy() {
        print("Buy Stock: [name: \(name), quantity: \(quantity)]")
    }
    
    func sell() {
        print("Sell Stock: [name: \(name), quantity: \(quantity)]")
    }
}

protocol Order {
    func execute()
}

class BuyStock: Order {
    var stock: Stock
    
    init(with stock: Stock) {
        self.stock = stock
    }
    
    func execute() {
        stock.buy()
    }
    
}

class SellStock: Order {
    var stock: Stock
    
    init(with stock: Stock) {
        self.stock = stock
    }
    
    func execute() {
        stock.sell()
    }
    
}

class Broker {
    var orders = [Order]()
    
    func takeOrder(with order: Order) {
        orders.append(order)
    }
    
    func placeOrders() {
        for order in orders {
            order.execute()
        }
        
        orders.removeAll()
    }
    
}
