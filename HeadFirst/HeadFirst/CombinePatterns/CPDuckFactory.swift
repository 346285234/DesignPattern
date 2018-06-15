//
//  CPDuckFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPDuckFactory: CPAbstractDuckFactory {
    func createMallardDuck() -> CPQuackable {
        return CPMallardDuck()
    }
    
    func createRedHeadDuck() -> CPQuackable {
        return CPRedHeadDuck()
    }
    
    func createDuckCall() -> CPQuackable {
        return CPDuckCall()
    }
    
    func createRubberDuck() -> CPQuackable {
        return CPRubberDuck()
    }
}
