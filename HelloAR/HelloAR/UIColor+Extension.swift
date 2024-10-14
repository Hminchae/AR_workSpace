//
//  UIColor+Extension.swift
//  HelloAR
//
//  Created by 황민채 on 10/14/24.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        UIColor(displayP3Red: Double.random(in: 0...1),
                green: Double.random(in: 0...1),
                blue: Double.random(in: 0...1),
                alpha: 1)
    }
}
