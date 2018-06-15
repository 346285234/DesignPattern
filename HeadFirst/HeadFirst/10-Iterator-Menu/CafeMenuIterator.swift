//
//  CafeMenuIterator.swift
//  HeadFirst
//
//  Created by 陈乾 on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CafeMenuIterator: Iterator {
    var menuItems: Set<MenuItem>
    var index: Set<MenuItem>.Index
    init(menuItems: Set<MenuItem>) {
        self.menuItems = menuItems
        index = menuItems.startIndex
    }
    
    func hasNext() -> Bool {
        if index < menuItems.endIndex {
            return true
        }
        
        return false
    }
    
    func next() -> Any {
        let item = menuItems[index]
        index = menuItems.index(after: index)
        return item
    }
}
