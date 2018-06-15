//
//  WeatherData.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 27/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class WeatherData: Observable {
    private var _temperature: Float = 0
    private var _humidity: Float = 0
    private var _pressure: Float = 0
    
    var temperature: Float {
        return _temperature
    }
    var humidity: Float {
        return _humidity
    }
    var pressure: Float {
        return _pressure
    }
    
    var observers: [Observer] = [Observer]()
    var hasChanged: Bool = false
    
    func measurementsChanged() {
        var subject = self as Observable
        subject.setChanged()
        subject.notifyObservers()
    }
    
    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        _temperature = temperature
        _humidity = humidity
        _pressure = pressure
        measurementsChanged()
    }
    
}
