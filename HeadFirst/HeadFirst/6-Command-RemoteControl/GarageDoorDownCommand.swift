//
//  GarageDoorDownCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class GarageDoorDownCommand: Command {
    var garageDoor: GarageDoor
    init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    func execute() {
        garageDoor.down()
    }
    
    func undo() {
        garageDoor.up()
    }
    
    var description: String {
        get {
            return "\(garageDoor.name) down"
        }
    }
}
