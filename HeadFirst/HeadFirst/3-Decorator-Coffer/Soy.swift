//
//  Soy.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Soy: CondimentDecorator {
    var beverage: Beverage
    init(with beverage: Beverage) {
        self.beverage = beverage
    }
    
    func cost() -> Float {
        return 0.1 + beverage.cost()
    }
    
    var description: String {
        get {
            return "Soy, " + beverage.description
        }
    }
}
