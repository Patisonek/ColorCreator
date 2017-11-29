//
//  UIColor+RandomColor.swift
//  ColorCreator
//
//  Created by Admin on 29/11/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func randomColor() -> UIColor {
        
        // wylosowana wartość hue jest z przedziału od 0.0 do 1.0
        
        let hue = CGFloat(arc4random_uniform(256)) / 256.0
        
        // wylosowana wartość saturation jest z przedziału od 0.5 do 1.0
        
        let saturation = CGFloat(arc4random_uniform(128)) / 256.0 + 0.5
        
        // wylosowana wartość saturation jest z przedziału od 0.5 do 1.0
        
        let brightness = CGFloat(arc4random_uniform(128)) / 256.0 + 0.5
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }

}
