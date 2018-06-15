//
//  HasQuarterState.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class HasQuarterState: State {
    var gumballMachine: GumballMachine
    init(machine: GumballMachine) {
        self.gumballMachine = machine
    }
    
    func ejectQuarter() -> Bool {
        gumballMachine.state = gumballMachine.noQuarterState
        return true
    }
    
    func turnCrank() -> Bool {
        if arc4random_uniform(10) == 0 {
            print("win")
            gumballMachine.state = gumballMachine.winState
        } else {
            gumballMachine.state = gumballMachine.soldState
        }
        
        return true
    }
}
