//
//  Stereo.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

struct Stereo {
    var name: String
    
    func on() {
        print("Stereo on")
    }
    
    func off() {
        print("Stereo off")
    }
    
    func setCD() {
        print("Stereo set cd")
    }
    
    func setDVD() {
        print("Stereo set dvd")
    }
    
    func setRadio() {
        print("Stereo set radio")
    }
    
    func setVolume(value: Int) {
        print("Stereo set volume \(value)")
    }
}
