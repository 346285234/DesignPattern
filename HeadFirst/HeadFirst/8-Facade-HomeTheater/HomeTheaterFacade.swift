//
//  HomeTheaterFacade.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class HomeTheaterFacade {
    var amplifier: Amplifier
    var tuner: Tuner
    var dvdPlayer: DVDPlayer
    var cdPlayer: CDPlayer
    var screen: Screen
    var popcornPopper: PopcornPopper
    var theaterLights: TheaterLights
    var projector: Projector
    
    init() {
        self.tuner = Tuner()
        self.amplifier = Amplifier(tuner: self.tuner)
        self.dvdPlayer = DVDPlayer(amplifier: self.amplifier)
        self.cdPlayer = CDPlayer(amplifier: self.amplifier)
        self.screen = Screen()
        self.popcornPopper = PopcornPopper()
        self.theaterLights = TheaterLights()
        self.projector = Projector(dvdPlayer: self.dvdPlayer)
    }
    
    func watchMovie(dvd: String, movie: String) {
        popcornPopper.on()
        popcornPopper.pop()
        theaterLights.dim(value: 10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amplifier.on()
        amplifier.setSurroundSound()
        amplifier.setVolume(value: 10)
        dvdPlayer.on()
        dvdPlayer.setDVD(dvd: dvd)
        dvdPlayer.play(movie: movie)
    }
    
    func endMovie() {
        popcornPopper.off()
        theaterLights.off()
        screen.up()
        projector.off()
        amplifier.off()
        dvdPlayer.stop()
        dvdPlayer.eject()
        dvdPlayer.off()
    }
}
