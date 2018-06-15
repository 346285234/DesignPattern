//
//  NYStyleCheesePizza.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CheesePizza: Pizza {
    var name: String {
        get {
            return "Cheese pizza"
        }
    }
    // Ingredient
    var dough: Dough?
    var sauce: Sauce?
    var cheese: Cheese?
    var pepperoni: Pepperoni?
    var clam: Clam?
    var veggie: Veggie?
    
    var ingredientFactory: PizzaIngredientFactory
    
    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
    }
    
    func prepare() {
        print("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
    }
}
