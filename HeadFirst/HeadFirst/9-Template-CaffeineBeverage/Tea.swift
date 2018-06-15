//
//  Tea.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Tea: CaffeineBeverage {
    func brew() {
        print("Dropping tea leaf")
    }
    
    func addCondiments() {
        print("Add lemon")
    }
    
    func isCustomerWantCondiments() -> Bool {
        return false
    }
}
