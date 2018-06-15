//
//  NYPizzaIngredientFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThickCrustDough()
    }
    
    func createSauce() -> Sauce {
        return PlumTomatoSauce()
    }
    
    func createCheese() -> Cheese {
        return MozzarellaCheese()
    }
    
    func createPepperoni() -> Pepperoni {
        return NormalPepperoni()
    }
    
    func createClam() -> Clam {
        return FrozenClam()
    }
    
    func createVeggie() -> Veggie {
        return NormalVeggie()
    }
}
