//
//  CPObserver.swift
//  HeadFirst
//
//  Created by 陈乾 on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

protocol CPObserver {
    func update(duck: CPQuackObservable)
}
