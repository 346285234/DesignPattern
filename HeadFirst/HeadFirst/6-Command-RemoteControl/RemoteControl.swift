//
//  RemoteControl.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class RemoteControl: CustomStringConvertible {
    private var onCommands: [Command]
    private var offCommands: [Command]
    private var prevCommands: [Command]
    
    init() {
        onCommands = [Command]()
        offCommands = [Command]()
        prevCommands = [Command]()
        
        let noCommand = NoCommand()
        for _ in 0 ..< 7 {
            onCommands.append(noCommand)
            offCommands.append(noCommand)
        }
    }
    
    func setCommand(slot: Int, onCommand: Command, offCommand: Command) {
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }
    
    func onButtonWasPushed(slot: Int) {
        onCommands[slot].execute()
        prevCommands.append(onCommands[slot])
    }
    
    func offButtonWasPushed(slot: Int) {
        offCommands[slot].execute()
        prevCommands.append(offCommands[slot])
    }
    
    func undoButtonWasPushed() {
        if let command = prevCommands.popLast() {
            command.undo()
        }
    }
    
    var description: String {
        get {
            var str = "---- Remote Control ----\n"
            for i in 0 ..< onCommands.count {
                str += "slot \(i): \(onCommands[i].description), \(offCommands[i].description)\n"
            }
            return str
        }
    }
}
