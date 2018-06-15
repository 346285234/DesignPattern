//
//  CPQuackCounter.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPQuackCounter: CPQuackable {
    var duck: CPQuackable
    private static var _numberOfQuacks: Int = 0
    static var numberOfQuacks: Int {
        get {
            return _numberOfQuacks
        }
    }
    init(duck: CPQuackable) {
        self.duck = duck
    }
    
    func quack() {
        duck.quack()
        CPQuackCounter._numberOfQuacks += 1
    }
    
    func registerObserver(observer: CPObserver) {
        duck.registerObserver(observer: observer)
    }
    
    func notifyObservers() {
        duck.notifyObservers()
    }
}
