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
        Shadow.apply(view: cancelShadowView, radius: 25, alpha: 0.2)
        Shadow.apply(view: okShadowView, radius: 25, alpha: 0.2)
    }

}
