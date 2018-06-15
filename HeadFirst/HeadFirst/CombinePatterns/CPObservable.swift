//
//  CPObservable.swift
//  HeadFirst
//
//  Created by 陈乾 on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPObservable: CPQuackObservable {
    var observers = [CPObserver]()
    var duck: CPQuackObservable
    init(duck: CPQuackObservable) {
        self.duck = duck
    }
    
    func registerObserver(observer: CPObserver) {
        observers.append(observer)
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(duck: duck)
        }
    }
}
