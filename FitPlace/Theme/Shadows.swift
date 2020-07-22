//
//  Shadows.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class Shadow {
    static func apply(view: UIView, radius: CGFloat) {
        view.backgroundColor = .clear
        let layer = view.layer
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = radius
        layer.shadowOpacity = 0.2
        let rect = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        layer.shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: radius).cgPath
    }
}

