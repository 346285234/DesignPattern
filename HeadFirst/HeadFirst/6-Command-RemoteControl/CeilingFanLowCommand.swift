//
//  CeilingFanLowCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CeilingFanLowCommand: Command {
    var ceilingFan: CeilingFan
    var prevSpeed: CeilingFanSpeed?
    
    init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }
    
    func execute() {
        prevSpeed = ceilingFan.speed
        ceilingFan.speed = CeilingFanSpeed.low
    }
    
    func undo() {
        if let prevSpeed = prevSpeed {
            ceilingFan.speed = prevSpeed
        }
    }
    
    var description: String {
        get {
            return "\(ceilingFan.name) low"
        }
    }
}
