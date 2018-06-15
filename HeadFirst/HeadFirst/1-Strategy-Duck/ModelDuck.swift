//
//  ModelDuck.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 26/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ModelDuck: Duck {
    override init() {
        super.init()
        
        quackBehavior = Quack()
        flyBehavior = FlyNoWay()
    }
    
    override func display() {
        print("model duck")
    }
}
