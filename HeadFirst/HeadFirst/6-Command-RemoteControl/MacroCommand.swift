//
//  MacroCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class MacroCommand: Command {
    var commands: [Command]
    
    init(commands: [Command]) {
        self.commands = commands
    }
    
    func execute() {
        for command in commands {
            command.execute()
        }
    }
    
    func undo() {
        for command in commands {
            command.undo()
        }
    }
    
    var description: String {
        get {
            return "Macro command"
        }
    }
}
