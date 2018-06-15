//
//  Decaf.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Decaf: Beverage {
    func cost() -> Float {
        return 1
    }
    
    var description: String {
        get {
            return "Decaf"
        }
    }
}
