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
    
    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: cancelShadowView, radiusForPath: 25, shadowRadius: 7, alpha: 0.05, top: 6, left: 0)
        Shadow.shadowToView(view: okShadowView, radiusForPath: 25, shadowRadius: 7, alpha: 0.05, top: 6, left: 0)
    }
    
}
