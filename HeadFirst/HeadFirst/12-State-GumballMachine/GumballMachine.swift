//
//  GumballMachine.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class GumballMachine {
    var noQuarterState: State {
        get {
            return NoQuarterState(machine: self)
        }
    }
    var hasQuarterState: State {
        get {
            return HasQuarterState(machine: self)
        }
    }
    var soldState: State {
        get {
            return SoldState(machine: self)
        }
    }
    var soldOutState: State {
        get {
            return SoldOutState(machine: self)
        }
    }
    var winState: State {
        get {
            return WinState(machine: self)
        }
    }
    
    private var _state: State
    var state: State {
        get {
            return _state
        }
        set {
            _state = newValue
        }
    }
    private var _candyCount: Int
    var candyCount: Int {
        get {
            return _candyCount
        }
    }
    init() {
        _state = NilState()
        _candyCount = 0
        
        state = soldOutState
    }
    
    func insertQuarter() {
        if state.insertQuarter() {
            print("Insert quarter")
        } else {
            print("Cannot insert quarter")
        }
    }
    
    func ejectQuarter() {
        if state.ejectQuarter() {
            print("Eject quarter")
        } else {
            print("Cannot eject quarter")
        }
    }
    
    func turnCrank() {
        if state.turnCrank() {
            _ = state.dispense()
        } else {
            print("Cannot turn crank")
        }
    }
    
    func releaseCandy() {
        print("Release candy")
        _candyCount -= 1
    }
    
    func refill(count: Int) {
        if state.refill() {
            print("Refill candy number: \(count)")
            _candyCount += count
        } else {
            print("Cannot refill")
        }
    }
}
