//
//  CaffeineBeverage.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol CaffeineBeverage {
    func prepareRecipe()
    func brew()
    func addCondiments()
    func boilWater()
    func pourInCup()
    func isCustomerWantCondiments() -> Bool
}

extension CaffeineBeverage {
    func prepareRecipe() {
        boilWater()
        brew()
        pourInCup()
        if isCustomerWantCondiments() {
            addCondiments()
        }
    }
    
    func isCustomerWantCondiments() -> Bool {
        return true
    }
    
    func boilWater() {
        print("boil the water")
    }
    
    func pourInCup() {
        print("pour in cup")
    }
}
