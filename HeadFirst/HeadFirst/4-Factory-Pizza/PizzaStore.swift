//
//  PizzaStore.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol PizzaStore {
    func createPizza(with style: PizzaStyle) -> Pizza
    func orderPizza(with style: PizzaStyle) -> Pizza
}

extension PizzaStore {
    func orderPizza(with style: PizzaStyle) -> Pizza {
        let pizza = createPizza(with: style)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        
        return pizza
    }
}
