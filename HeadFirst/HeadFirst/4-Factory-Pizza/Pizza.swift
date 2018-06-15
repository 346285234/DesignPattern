//
//  Pizza.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

enum PizzaStyle {
    case cheese
    case pepperoni
    case clam
    case veggie
}

protocol Pizza {
    var name: String { get }
    // Ingredient
    var dough: Dough? { get }
    var sauce: Sauce? { get }
    var cheese: Cheese? { get }
    var pepperoni: Pepperoni? { get }
    var clam: Clam? { get }
    var veggie: Veggie? { get }
    
    func prepare()
    func bake()
    func cut()
    func box()
}

extension Pizza {
    func bake() {
        print("Bake for 25 minute at 350 temperature")
    }
    func cut() {
        print("Cutting the pizza into diagonal slices")
    }
    func box() {
        print("Place pizza in official pizza store box")
    }
}
