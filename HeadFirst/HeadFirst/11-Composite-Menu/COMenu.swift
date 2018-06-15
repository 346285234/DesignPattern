//
//  Menu.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class COMenu: COMenuComponent, CustomStringConvertible {
    private var menuComponents: [COMenuComponent]
    var name: String
    var description: String
    init(name: String, description: String) {
        self.menuComponents = [COMenuComponent]()
        self.name = name
        self.description = description
    }

    func add(component: COMenuComponent) {
        menuComponents.append(component)
    }

    func remove(component: COMenuComponent) {
        for (index, menuComponent) in menuComponents.enumerated() {
            if menuComponent.name == component.name {
                menuComponents.remove(at: index)
            }
        }
    }
    
    func getChild(index: Int) -> COMenuComponent {
        return menuComponents[index]
    }
    
    func createIterator() -> COIterator {
        let iterator = COCompositeIterator(iterator: COMenuIterator(menuComponent: self.menuComponents))
        return iterator
    }
    
    func print() {
        Swift.print("Menu: \(name)(\(description))")
        
        for menuComponent in menuComponents {
            menuComponent.print()
        }
    }
    
    var isMenu: Bool {
        get {
            return true
        }
    }
}

