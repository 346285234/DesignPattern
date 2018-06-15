//
//  DVDPlayer.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class DVDPlayer {
    var amplifier: Amplifier
    init(amplifier: Amplifier) {
        self.amplifier = amplifier
    }
    
    func on() {
        print("DVD player on")
    }
    
    func off() {
        print("DVD player off")
    }
    
    func eject() {
        print("DVD player eject")
    }
    
    func pause() {
        print("DVD player pause")
    }
    
    func play(movie: String) {
        print("DVD player play \(movie)")
    }
    
    func setSurroundAudio() {
        print("DVD player set surround auido")
    }
    
    func setTwoChannelAudio() {
        print("DVD player set two channel audio")
    }
    
    func stop() {
        print("DVD player stop")
    }
    
    func setDVD(dvd: String) {
        print("DVD player set dvd: (\(dvd)")
    }
}
