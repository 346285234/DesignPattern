//
//  NoCommand.swift
//  HeadFirst
//
//  Created by 陈乾 on 16/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class NoCommand: Command {
    func execute() {
        print("Do nothing")
    }
    
    func undo() {
        print("Do nothing")
    }
    
    var description: String {
        get {
            return "no comand"
        }
    }
}
