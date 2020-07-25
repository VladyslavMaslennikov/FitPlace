//
//  ManagerDataViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 26.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class ManagerDataViewController: UIViewController {
    
    @IBOutlet weak var shadowView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundThemeColor
    }
    

    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: shadowView, radiusForPath: 20, shadowRadius: 3, alpha: 0.4, top: 3, left: 0)
    }

}
