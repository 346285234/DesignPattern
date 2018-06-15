//
//  COCompositeIterator.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class COCompositeIterator: COIterator {
    var stack = [COIterator]()
    init(iterator: COIterator) {
        stack.append(iterator)
    }

    func hasNext() -> Bool {
        if stack.isEmpty {
            return false
        }
        
        let iterator = stack.last!
        if !iterator.hasNext() {
            _ = stack.popLast()
            return hasNext()
        }
        
        return true
    }

    func next() -> COMenuComponent? {
        if !hasNext() {
            return nil
        }
        
        let iterator = stack.last!
        let component = iterator.next()
        if let menu = component as? COMenu {
            stack.append(menu.createIterator())
        }
        
        return component
    }
}

