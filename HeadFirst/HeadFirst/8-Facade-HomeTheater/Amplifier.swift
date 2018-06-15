//
//  Amplifier.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class Amplifier {
    var tuner: Tuner
    init(tuner: Tuner) {
        self.tuner = tuner
    }
    
    func on() {
        print("Amplifier on")
        tuner.on()
    }
    
    func off() {
        print("Amplifier off")
        tuner.off()
    }
    
    func setStereoSound() {
        print("Amplifier set stereo sound")
    }
    
    func setSurroundSound() {
        print("Amplifier set surround sound")
    }
    
    func setVolume(value: Int) {
        print("Amplifier volume \(value)")
    }
}

