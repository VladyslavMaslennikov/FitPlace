//
//  VerifyViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class VerifyViewController: UIViewController {
    @IBOutlet weak var informTextView: UITextView!
    @IBOutlet weak var cancelShadowView: UIView!
    @IBOutlet weak var okShadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    private func setupUI() {
        let font = UIFont(name: "Futura", size: 13)
        let alignment: NSTextAlignment = .center
        let plainTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font: font as Any
        ]
        let plainText = NSAttributedString(string: "Введите код подтверждения из сообщения, отправленного на указанный вами номер телефона. Доставка сообщения может занять минуту или более", attributes: plainTextAttributes)
        informTextView.attributedText = plainText
        informTextView.textAlignment = alignment
        
        Shadow.apply(view: cancelShadowView, radius: 25)
        Shadow.apply(view: okShadowView, radius: 25)
        
    }

}
