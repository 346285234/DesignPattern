//
//  DinnerMenuIterator.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class DinnerMenuIterator: Iterator {
    var menuItems: [MenuItem]
    var position: Int
    init(menuItems: [MenuItem]) {
        self.menuItems = menuItems
        self.position = 0
    }
    
    func hasNext() -> Bool {
        if position < menuItems.count {
            return true
        }
        
        return false
    }
    
    func next() -> Any {
        let object = menuItems[position]
        position += 1
        return object
    }
}
