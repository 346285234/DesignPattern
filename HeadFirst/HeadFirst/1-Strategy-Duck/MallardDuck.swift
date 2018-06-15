//
//  MallardDuck.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 25/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class MallardDuck: Duck {
    
    override init() {
        super.init()
        
        quackBehavior = Quack()
        flyBehavior = FlyWithWings()
    }
    
    override func display() {
        print("Mallard duck")
    }
}
