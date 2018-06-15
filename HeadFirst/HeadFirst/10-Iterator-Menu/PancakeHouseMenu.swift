//
//  PancakeHouseMenu.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class PancakeHouseMenu: Menu {
    var menuItems: NSMutableArray
    init() {
        menuItems = NSMutableArray()
        addItem(name: "K&B's pancake breakfast", isVegetarian: true, price: 3)
        addItem(name: "Regular pancake breakfast", isVegetarian: false, price: 3)
        addItem(name: "Waffles", isVegetarian: true, price: 4)
    }
    
    func addItem(name: String, isVegetarian: Bool, price: Float) {
        let item = MenuItem(name: name, isVegetarian: isVegetarian, price: price)
        menuItems.add(item)
    }
    
    func createIterator() -> Iterator {
        let iterator = PancakeMenuIterator(menuItems: menuItems)
        return iterator
    }
}
