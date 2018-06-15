//
//  Subject.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 27/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol Observable {
//    mutating func addObserver(observer: Observer)
//    mutating func removeObserver(observer: Observer)
//    mutating func notifyObservers()
//    mutating func notifyObserver(observer: Observer)
    
    var observers: [Observer] { get set }
    var hasChanged: Bool { get set }
}

extension Observable {
    mutating func addObserver(observer: Observer) {
        observers.append(observer)
    }
    
    mutating func removeObserver(observer: Observer) {
        for (index, ob) in observers.enumerated() {
            if ob == observer {
                observers.remove(at: index)
                return
            }
        }
    }
    
    mutating func notifyObservers() {
        if !hasChanged {
            return
        }
        
        for ob in observers {
            ob.update(observable: self, userInfo: nil)
        }
        
        hasChanged = false
    }
    
    mutating func notifyObserver(observer: Observer) {
        if !hasChanged {
            return
        }
        
        for ob in observers {
            if ob == observer {
                ob.update(observable: self, userInfo: nil)
                return
            }
        }
        
        hasChanged = false
    }
    
    mutating func setChanged() {
        hasChanged = true
    }
}
