//
//  Coffee.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Coffee: CaffeineBeverage {
    func brew() {
        print("Dripping coffee through filter")
    }
    
    func addCondiments() {
        print("Adding milk and sugar")
    }
    
    func isCustomerWantCondiments() -> Bool {
        let isWanted = getUserInput()
        return isWanted
    }
    
    private func getUserInput() -> Bool {
        print("Would you like milk and sugar with your coffee (y/n)?")
        let response = readLine()
        if response == "y" {
            return true
        } else {
            return false
        }
    }
}
