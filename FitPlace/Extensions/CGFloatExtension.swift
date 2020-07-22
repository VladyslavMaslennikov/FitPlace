//
//  CGFloatExtension.swift
//  FitPlace
//
//  Created by Vladyslav on 21.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

extension Double {
    func convert() -> Int {
        let scaleFactor = UIScreen.main.scale
        let value = self / Double(scaleFactor)
        return Int(value.rounded())
    }
}

extension Int {
    func convert() -> Int {
        let scaleFactor = UIScreen.main.scale
        let value = Double(self) / Double(scaleFactor)
        return Int(value.rounded())
    }
}

extension UIColor {
    static let backgroundThemeColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
}
