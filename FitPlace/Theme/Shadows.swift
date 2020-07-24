//
//  Shadows.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class Shadow {
    static func shadowToView(view: UIView, radiusForPath: CGFloat, shadowRadius: CGFloat, alpha: Float, top: CGFloat, left: CGFloat) {
        view.backgroundColor = .clear
        let layer = view.layer
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: left, height: top)
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = 0.4
        layer.shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: radiusForPath).cgPath
    }
}

