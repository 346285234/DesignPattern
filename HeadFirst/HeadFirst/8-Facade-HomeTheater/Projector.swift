//
//  Projector.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Projector {
    var dvdPlayer: DVDPlayer
    init(dvdPlayer: DVDPlayer) {
        self.dvdPlayer = dvdPlayer
    }
    
    func on() {
        print("Projector on")
    }
    
    func off() {
        print("Projector off")
    }
    
    func tvMode() {
        print("Projector tv mode")
    }
    
    func wideScreenMode() {
        print("Projector wide screen mode")
    }
}
