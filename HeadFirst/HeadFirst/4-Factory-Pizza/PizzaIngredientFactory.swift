//
//  PizzaIngredientFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createPepperoni() -> Pepperoni
    func createClam() -> Clam
    func createVeggie() -> Veggie
}
