//
//  SoldState.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class SoldState: State {
    var gumballMachine: GumballMachine
    init(machine: GumballMachine) {
        self.gumballMachine = machine
    }
    
    func dispense() -> Bool {
        gumballMachine.releaseCandy()
        if gumballMachine.candyCount == 0 {
            gumballMachine.state = gumballMachine.soldOutState
        } else {
            gumballMachine.state = gumballMachine.noQuarterState
        }
        
        return true
    }
}
