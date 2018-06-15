//
//  StereoOffCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class StereoOffCommand: Command {
    var stereo: Stereo
    init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo.off()
    }
    
    func undo() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(value: 11)
    }
    
    var description: String {
        get {
            return "\(stereo.name) off"
        }
    }
}
