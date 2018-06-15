//
//  CDPlayer.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class CDPlayer {
    var amplifier: Amplifier
    init(amplifier: Amplifier) {
        self.amplifier = amplifier
    }
    
    func on() {
        print("CD player on")
    }
    
    func off() {
        print("CD player off")
    }
    
    func eject() {
        print("CD player eject")
    }
    
    func pause() {
        print("CD player pause")
    }
    
    func play(music: String) {
        print("CD player play \(music)")
    }
    
    func stop() {
        print("CD player stop")
    }
    
    func setCD(cd: String) {
        print("CD player set cd: \(cd)")
    }
}
