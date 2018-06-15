//
//  State.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol State {
    func insertQuarter() -> Bool
    func ejectQuarter() -> Bool
    func turnCrank() -> Bool
    func dispense() -> Bool
    func refill() -> Bool
    
//    var gumballMachine: GumballMachine { get }
}

extension State {
    func insertQuarter() -> Bool { return false }
    func ejectQuarter() -> Bool { return false }
    func turnCrank() -> Bool { return false }
    func dispense() -> Bool { return false }
    func refill() -> Bool { return false }
}
