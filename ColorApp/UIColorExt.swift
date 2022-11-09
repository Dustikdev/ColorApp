//
//  UIColorExt.swift
//  ColorApp
//
//  Created by Никита Швец on 08.11.2022.
//

import UIKit

extension UIColor {
    
    static func createRandomColor() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1)
    }
    
}
