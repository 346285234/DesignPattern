import Foundation

protocol Item {
    func name() -> String
    func packing() -> Packing
    func price() -> Float
}

protocol Packing {
    func pack() -> String
}

class Wrapper: Packing {
    func pack() -> String {
        return "wrapper"
    }
}

class Bottle: Packing {
    func pack() -> String {
        return "bottle"
    }
}

protocol Burger: Item {
}

extension Burger {
    func packing() -> Packing {
        return Wrapper()
    }
}

protocol ColdDrink: Item {
}

extension ColdDrink {
    func packing() -> Packing {
        return Bottle()
    }
}

class VegBurger: Burger {
    func name() -> String {
        return "veg burger"
    }
    
    func price() -> Float {
        return 1
    }
}

class ChickenBurger: Burger {
    func name() -> String {
        return "chicken burger"
    }
    
    func price() -> Float {
        return 1
    }
}

class Pepsi: ColdDrink {
    func name() -> String {
        return "pepsi"
    }
    
    func price() -> Float {
        return 0.5
    }
}

class Coke: ColdDrink {
    func name() -> String {
        return "coke"
    }
    
    func price() -> Float {
        return 0.5
    }
}

class Meal {
    var items = [Item]()
    
    func addItem(item: Item) -> Void {
        items.append(item)
    }
    
    func getPrice() -> Float {
        let price = items.reduce(0.0) { return $0 + $1.price() }
        return price
    }
    
    func showItems() {
        _ = items.map() { print("Item: \($0.name()), Packing: \($0.packing()), Price: \($0.price())") }
    }
}

class MealBuilder {
    func prepareVegMeal() -> Meal {
        let meal = Meal()
        meal.addItem(item: VegBurger())
        meal.addItem(item: Coke())
        return meal
    }
    
    func prepareNonVegMeal() -> Meal {
        let meal = Meal()
        meal.addItem(item: ChickenBurger())
        meal.addItem(item: Pepsi())
        return meal
    }
}

public class BuilderPatternDemo {
    public static func main() {
        let mealBuilder = MealBuilder()
        
        let vegMeal = mealBuilder.prepareVegMeal()
        print("Veg Meal")
        vegMeal.showItems()
        print("Total Cost: \(vegMeal.getPrice())")
        
        let nonVegMeal = mealBuilder.prepareNonVegMeal()
        print("Nonveg Meal")
        nonVegMeal.showItems()
        print("Total Cost: \(nonVegMeal.getPrice())")
    }
}
