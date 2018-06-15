//
//  MenuItem.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class MenuItem: CustomStringConvertible {
    private var _name: String
    private var _isVegetarian: Bool
    private var _price: Float
    
    var name: String {
        get {
            return _name
        }
    }
    var isVegetarian: Bool {
        get {
            return _isVegetarian
        }
    }
    var price: Float {
        get {
            return _price
        }
    }
    
    init(name: String, isVegetarian: Bool, price: Float) {
        _name = name
        _isVegetarian = isVegetarian
        _price = price
    }
    
    var description: String {
        get {
            return "MenuItem: (name: \(name), isVegetarian: \(isVegetarian), price: \(price))"
        }
    }
}

extension MenuItem: Hashable {
    var hashValue: Int {
        get {
            return 0
        }
    }
    
    static func ==(lhs: MenuItem, rhs: MenuItem) -> Bool {
        return lhs.name == rhs.name
    }
}
