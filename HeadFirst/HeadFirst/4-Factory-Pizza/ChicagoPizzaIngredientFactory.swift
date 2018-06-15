//
//  ChicagoPizzaIngredientFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    func createSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    func createCheese() -> Cheese {
        return ReggianCheese()
    }
    
    func createPepperoni() -> Pepperoni {
        return GoodPepperoni()
    }
    
    func createClam() -> Clam {
        return FreshClam()
    }
    
    func createVeggie() -> Veggie {
        return GoodVeggie()
    }
}
