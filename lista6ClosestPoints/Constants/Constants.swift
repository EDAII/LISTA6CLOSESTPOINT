//
//  Constants.swift
//  lista6ClosestPoints
//
//  Created by Miguel Pimentel on 29/10/18.
//  Copyright © 2018 Miguel Pimentel. All rights reserved.
//

import UIKit

class Constants {
    
    static let marineBlue: UIColor = UIColor(RGB: 0x1A535C)
    static let lightBlue: UIColor = UIColor(RGB: 0x4ECDC4)
    static let lightBlueWithAlpha: UIColor = UIColor(RGB: 0x4ECDC4, alpha: 0.5)
    static let iceWhite: UIColor = UIColor(RGB: 0xF7FFF7)
    static let flatRed: UIColor = UIColor(RGB: 0xFF6B6B)
    static let flatYellow: UIColor = UIColor(RGB: 0xFFE66D)
    static let blackWithAlpha = UIColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
    
    static var isForceTouchAvailable: Bool = false
    static let colors = [ UIColor(RGB: 0x1A535C),
                          UIColor(RGB: 0x4ECDC4),
                          UIColor(RGB: 0xFF6B6B),
                          UIColor(RGB: 0xFFE66D)]
}

extension UIColor {
    
    convenience init(RGB: UInt) {
        self.init(RGB: RGB, alpha: 1.0)
    }
    
    convenience init(RGB: UInt, alpha: CGFloat) {
        self.init(
            red: CGFloat((RGB & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((RGB & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(RGB & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
