//
//  ChicagoStylePizzaStore.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ChicagoStylePizzaStore: PizzaStore {
    func createPizza(with style: PizzaStyle) -> Pizza {
        var pizza: Pizza
        
        let factory = ChicagoPizzaIngredientFactory()
        switch style {
        case .cheese:
            pizza = CheesePizza(ingredientFactory: factory)
        case .pepperoni:
            pizza = PepperoniPizza(ingredientFactory: factory)
        case .clam:
            pizza = ClamPizza(ingredientFactory: factory)
        case .veggie:
            pizza = VeggiePizza(ingredientFactory: factory)
        }
        
        return pizza
    }
}
