//
//  MenuComponent.swift
//  HeadFirst
//
//  Created by 陈乾 on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol COMenuComponent {
    // Menu operation
    func add(component: COMenuComponent)
    func remove(component: COMenuComponent)
    func getChild(index: Int) -> COMenuComponent
    func createIterator() -> COIterator
    // MenuItem computer variable
    var name: String { get }
    var isVegetarian: Bool { get }
    var price: Float { get }
    
    func print()
}

extension COMenuComponent {
    func add(component: COMenuComponent) {
        fatalError()
    }
    func remove(component: COMenuComponent) {
        fatalError()
    }
    func getChild(index: Int) -> COMenuComponent {
        fatalError()
    }
    func createIterator() -> COIterator {
        fatalError()
    }
    var name: String {
        get {
            fatalError()
        }
    }
    var isVegetarian: Bool {
        get {
            return false
        }
    }
    var price: Float {
        get {
            fatalError()
        }
    }
}
