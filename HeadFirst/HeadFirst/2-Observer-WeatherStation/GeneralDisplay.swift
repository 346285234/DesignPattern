//
//  GeneralDisplay.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 29/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class GeneralDisplay: Observer, Display {
    var id: String
    var observable: Observable
    private var _temperature: Float = 0
    private var _humidity: Float = 0
    private var _pressure: Float = 0
    
    init(id: String, observable: inout WeatherData) {
        self.id = id
        self.observable = observable
        
        observable.addObserver(observer: self)
    }
    
    func update(observable: Observable, userInfo: Any?) {
        if let weatherData = observable as? WeatherData {
            _temperature = weatherData.temperature
            _humidity = weatherData.humidity
            _pressure = weatherData.pressure
            display()
        }
    }
    
    func display() {
        print("Weather: (temperature: \(_temperature), humidity: \(_humidity), pressure: \(_pressure))")
    }
}

