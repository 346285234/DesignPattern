//
//  DinnerMenu.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class DinnerMenu: Menu {
    var menuItems: [MenuItem]
    init() {
        menuItems = [MenuItem]()
        addItem(name: "K&B's pancake breakfast", isVegetarian: true, price: 3)
        addItem(name: "Regular pancake breakfast", isVegetarian: false, price: 3)
        addItem(name: "Waffles", isVegetarian: true, price: 4)
    }
    
    func addItem(name: String, isVegetarian: Bool, price: Float) {
        let item = MenuItem(name: name, isVegetarian: isVegetarian, price: price)
        menuItems.append(item)
    }
    
    func createIterator() -> Iterator {
        let iterator = DinnerMenuIterator(menuItems: menuItems)
        return iterator
    }
}
