//
//  ADTurkeyAdapter.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ADTurkeyAdapter: ADDuck {
    var turkey: ADTurkey
    init(turkey: ADTurkey) {
        self.turkey = turkey
    }
    
    func fly() {
        turkey.fly()
    }
    
    func quack() {
        turkey.gobble()
    }
}
