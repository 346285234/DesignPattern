//
//  CPCountingDuckFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CPCountingDuckFactory: CPAbstractDuckFactory {
    func createMallardDuck() -> CPQuackable {
        return CPQuackCounter(duck: CPMallardDuck())
    }
    
    func createRedHeadDuck() -> CPQuackable {
        return CPQuackCounter(duck: CPRedHeadDuck())
    }
    
    func createDuckCall() -> CPQuackable {
        return CPQuackCounter(duck: CPDuckCall())
    }
    
    func createRubberDuck() -> CPQuackable {
        return CPQuackCounter(duck: CPRubberDuck())
    }
}
