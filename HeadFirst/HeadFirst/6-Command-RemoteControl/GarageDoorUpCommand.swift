//
//  GarageDoorUpCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class GarageDoorUpCommand: Command {
    var garageDoor: GarageDoor
    init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    func execute() {
        garageDoor.up()
    }
    
    func undo() {
        garageDoor.down()
    }
    
    var description: String {
        get {
            return "\(garageDoor.name) up"
        }
    }
}
