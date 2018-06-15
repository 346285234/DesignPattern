//
//  StereoOnWithCDCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class StereoOnWithCDCommand: Command {
    var stereo: Stereo
    
    init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(value: 11)
    }
    
    func undo() {
        stereo.off()
    }
    
    var description: String {
        get {
            return "\(stereo.name) on"
        }
    }
}
