//
//  Duck.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 25/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

/// Abstract class
class Duck {
    var flyBehavior: FlyBehavior?
    var quackBehavior: QuackBehavior?
    
    func performQuack() {
        quackBehavior?.quack()
    }
    
    func performFly() {
        flyBehavior?.fly()
    }
    
    func setFlyBehavior(flyBehavior: FlyBehavior?) {
        self.flyBehavior = flyBehavior
    }
    
    func setQuackBehavior(quackBehavior: QuackBehavior?) {
        self.quackBehavior = quackBehavior
    }
    
    func display() {
    }
    
}
