//
//  ChocolateBoiler.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

final class ChocolateBoiler {
    // 饿汉式
    static let sharedInstance = ChocolateBoiler()
    private init() {
    }
    
    var isEmpty = true
    var isBoiled = false
    
    func fill() {
        if isEmpty && !isBoiled {
            print("Filling")
            isEmpty = false
        }
    }
    
    func drain() {
        if !isEmpty && isBoiled {
            print("Draining")
            isEmpty = true
            isBoiled = false
        }
    }
    
    func boil() {
        if !isEmpty && !isBoiled {
            print("Boiling")
            isBoiled = true
        }
    }
}
