//
//  ShadowEffects.swift
//  iOS_UIScreens
//
//  Created by Nazym Sayakhmet on 09.09.2023.
//

import Foundation
import UIKit

extension UIView {
    
    func addShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: -2, height: 3)
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 1
        self.layer.masksToBounds = false
    }
    
    func addShadowAndShape() {
        let shadows = UIView(frame: self.frame)
        shadows.clipsToBounds = false
        
        let shadowPath = UIBezierPath(roundedRect: shadows.bounds, cornerRadius: self.layer.cornerRadius)
        let shadowLayer = CALayer()
        shadowLayer.shadowPath = shadowPath.cgPath
        shadowLayer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        shadowLayer.shadowOpacity = 1
        shadowLayer.shadowRadius = 50
        shadowLayer.shadowOffset = CGSize(width: -4, height: 8)
        shadowLayer.bounds = shadows.bounds
        shadowLayer.position = shadows.center
        shadows.layer.addSublayer(shadowLayer)
        
        let shapes = UIView(frame: self.frame)
        shapes.clipsToBounds = true
        
        let shapeLayer = CALayer()
        shapeLayer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        shapeLayer.bounds = shapes.bounds
        shapeLayer.position = shapes.center
        shapes.layer.addSublayer(shapeLayer)
        shapes.layer.cornerRadius = self.layer.cornerRadius
        
        self.addSubview(shadows)
        self.addSubview(shapes)
    }
}

