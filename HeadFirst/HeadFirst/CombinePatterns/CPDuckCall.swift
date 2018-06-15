//
//  CPDuckCall.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPDuckCall: CPQuackable {
    var observable: CPObservable?
    init() {
        self.observable = CPObservable(duck: self)
    }
    
    func quack() {
        print("Kwak")
        notifyObservers()
    }
    
    func registerObserver(observer: CPObserver) {
        observable?.registerObserver(observer: observer)
    }
    
    func notifyObservers() {
        observable?.notifyObservers()
    }
}
