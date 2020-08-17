//
//  AuthViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 21.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    @IBOutlet weak var separatorLine: UIView!
    @IBOutlet weak var informTextView: UITextView!
    @IBOutlet weak var shadowView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    private func setupUI() {
        let font = UIFont(name: Montserrat(.regular).font, size: 14)
        let alignment: NSTextAlignment = .center
        let plainTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font: font as Any
        ]
        let underlineTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.underlineStyle: 1,
            NSAttributedString.Key.underlineColor: UIColor.black,
            NSAttributedString.Key.font: font as Any
        ]
        let plainText = NSAttributedString(string: "Авторизуясь, вы соглашаетесь с ", attributes: plainTextAttributes)
        let underlinedText = NSAttributedString(string: "политикой конфиденциальности, договором оферты и условиями использования", attributes: underlineTextAttributes)
        let compoundString = NSMutableAttributedString(attributedString: plainText)
        compoundString.append(underlinedText)
        informTextView.attributedText = compoundString
        informTextView.textAlignment = alignment
        
    }
    
    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: shadowView, radiusForPath: 25, shadowRadius: 8, alpha: 0.1, top: 7, left: 0)
    }
   

}

