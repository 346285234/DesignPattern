//
//  Iterator.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 18/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol Iterator {
    func hasNext() -> Bool
    func next() -> Any
}
