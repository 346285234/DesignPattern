//
//  CPAbstractDuckFactory.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol CPAbstractDuckFactory {
    func createMallardDuck() -> CPQuackable
    func createRedHeadDuck() -> CPQuackable
    func createDuckCall() -> CPQuackable
    func createRubberDuck() -> CPQuackable
}
