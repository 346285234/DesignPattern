//
//  ImageProxy.swift
//  HeadFirst
//
//  Created by Paul (Qian) Chen on 19/10/2017.
//  Copyright © 2017 CQ. All rights reserved.
//

import Foundation

class ImageProxy: Icon {
    var imageIcon: ImageIcon?
    
    func getIconWidth() -> CGFloat {
        if let imageIcon = imageIcon {
            return imageIcon.getIconWidth()
        } else {
            return 1.0
        }
    }
    
    func getIconHeight() -> CGFloat {
        if let imageIcon = imageIcon {
            return imageIcon.getIconHeight()
        } else {
            return 1.0
        }
    }
    
    func paintIcon() {
        if let imageIcon = imageIcon {
            imageIcon.paintIcon()
        } else {
            print("Paint image proxy")
            print("Downloading....")
            print("Input anything:")
            _ = readLine()
            let imageIcon = ImageIcon()
            self.imageIcon = imageIcon
            imageIcon.paintIcon()
        }
    }
}
