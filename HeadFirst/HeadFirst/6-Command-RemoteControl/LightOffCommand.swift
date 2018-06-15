//
//  LightOffCommand.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class LightOffCommand: Command {
    var light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light.off()
    }
    
    func undo() {
        light.on()
    }
    
    var description: String {
        get {
            return "\(light.name) off"
        }
    }
}
