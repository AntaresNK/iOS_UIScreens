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
    
    func addShadowEffect() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: -4, height: 8)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 50
        self.layer.masksToBounds = false
    }
}

