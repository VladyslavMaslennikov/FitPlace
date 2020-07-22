//
//  Fonts.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import Foundation

struct Montserrat {
    enum FontType {
        case bold
        case light
        case medium
        case regular
        case semibold
        case thin
    }
    
    var font: String!
    
    init(_ type: FontType) {
        switch type {
        case .bold:
            font = "Montserrat-Bold"
        case .light:
            font = "Montserrat-Light"
        case .medium:
            font = "Montserrat-Medium"
        case .regular:
            font = "Montserrat-Regular"
        case .semibold:
            font = "Montserrat-SemiBold"
        case .thin:
            font = "Montserrat-Thin"
        }
    }
}
