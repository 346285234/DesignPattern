//
//  COMenuIterator.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class COMenuIterator: COIterator {
    var menuComponent: [COMenuComponent]
    var position: Int
    init(menuComponent: [COMenuComponent]) {
        self.menuComponent = menuComponent
        self.position = 0
    }
    
    func hasNext() -> Bool {
        if position < menuComponent.count {
            return true
        }
        
        return false
    }
    
    func next() -> COMenuComponent? {
        if !hasNext() {
            return nil
        }
        
        let component = menuComponent[position]
        position += 1
        return component
    }
}
