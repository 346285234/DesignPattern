//
//  CPGooseAdapter.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPGooseAdapter: CPQuackable {
    var observable: CPObservable?
    var goose: CPGoose
    init(goose: CPGoose) {
        self.goose = goose
        self.observable = CPObservable(duck: self)
    }
    
    func quack() {
        goose.honk()
        notifyObservers()
    }
    
    func registerObserver(observer: CPObserver) {
        observable?.registerObserver(observer: observer)
    }
    
    func notifyObservers() {
        observable?.notifyObservers()
    }
}
