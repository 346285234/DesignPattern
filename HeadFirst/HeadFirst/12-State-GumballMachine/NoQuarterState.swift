//
//  NoQuarterState.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class NoQuarterState: State {
    var gumballMachine: GumballMachine
    init(machine: GumballMachine) {
        self.gumballMachine = machine
    }
    
    func insertQuarter() -> Bool {
        gumballMachine.state = gumballMachine.hasQuarterState
        return true
    }
    
    func refill() -> Bool {
        return true
    }
}
