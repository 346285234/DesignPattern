//
//  SoldOutState.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class SoldOutState: State {
    var gumballMachine: GumballMachine
    init(machine: GumballMachine) {
        self.gumballMachine = machine
    }
    
    func refill() -> Bool {
        gumballMachine.state = gumballMachine.noQuarterState
        return true
    }
}
