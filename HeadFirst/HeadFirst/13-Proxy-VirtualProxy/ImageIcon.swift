//
//  ImageIcon.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ImageIcon: Icon {
    func getIconWidth() -> CGFloat {
        return 2.0
    }
    
    func getIconHeight() -> CGFloat {
        return 2.0
    }
    
    func paintIcon() {
        print("Paint image icon")
    }
}
