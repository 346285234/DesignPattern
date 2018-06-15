//
//  CPFlock.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPFlock: CPQuackable {
    var quackers: [CPQuackable]
    init(quackers: [CPQuackable]) {
        self.quackers = quackers
    }
    
    func quack() {
        var iterator = quackers.makeIterator()
        var quacker = iterator.next()
        while quacker != nil {
            quacker!.quack()
            quacker = iterator.next()
        }
    }
    
    func registerObserver(observer: CPObserver) {
        for quack in quackers {
            quack.registerObserver(observer: observer)
        }
    }
    
    func notifyObservers() {
        for quack in quackers {
            quack.notifyObservers()
        }
    }
}
