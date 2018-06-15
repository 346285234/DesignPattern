//
//  Observer.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 27/09/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol Observer {
    func update(observable: Observable, userInfo: Any?)
    var id: String { get }
}

func ==(lhs: Observer, rhs: Observer) -> Bool {
    return lhs.id == rhs.id
}

// error, cannot use
//extension Observer: Equatable {
//    public static func ==(lhs: Self, rhs: Self) -> Bool {
//        return lhs.id == rhs.id
//    }
//}

