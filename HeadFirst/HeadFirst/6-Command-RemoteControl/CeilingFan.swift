//
//  CeilingFan.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

enum CeilingFanSpeed: String {
    case high
    case medium
    case low
    case off
}

class CeilingFan {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    private var _speed: CeilingFanSpeed = .off
    var speed: CeilingFanSpeed {
        get {
            return _speed
        }
        set {
            print("Ceiling fan speed \(newValue.rawValue)")
            _speed = newValue
        }
    }
    
}
