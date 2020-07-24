//
//  UserDataViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 24.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class UserDataViewController: UIViewController {
    
    @IBOutlet weak var mondayView: UIView!
    @IBOutlet weak var mondayButton: UIButton!
    @IBOutlet weak var thuesdayView: UIView!
    @IBOutlet weak var thuesdayButton: UIButton!
    @IBOutlet weak var wednesdayView: UIView!
    @IBOutlet weak var wednesdayButton: UIButton!
    @IBOutlet weak var thursdayView: UIView!
    @IBOutlet weak var thursdayButton: UIButton!
    @IBOutlet weak var fridayView: UIView!
    @IBOutlet weak var fridayButton: UIButton!
    @IBOutlet weak var saturdayView: UIView!
    @IBOutlet weak var saturdayButton: UIButton!
    @IBOutlet weak var sundayView: UIView!
    @IBOutlet weak var sundayButton: UIButton!
    
    @IBOutlet weak var morningView: UIView!
    @IBOutlet weak var morningButton: UIButton!
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var dayButton: UIButton!
    @IBOutlet weak var eveningView: UIView!
    @IBOutlet weak var eveningButton: UIButton!
    
    @IBOutlet weak var time30View: UIView!
    @IBOutlet weak var time30Button: UIButton!
    @IBOutlet weak var time45View: UIView!
    @IBOutlet weak var time45Button: UIButton!
    @IBOutlet weak var time60View: UIView!
    @IBOutlet weak var time60Button: UIButton!
    
    @IBOutlet weak var saveView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var textViewOne: UITextView!
    @IBOutlet weak var textViewTwo: UITextView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var weekendStackView: UIStackView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor
        scrollView.showsVerticalScrollIndicator = false
        
    }
    
    override func viewDidLayoutSubviews() {
        let screenWidth = UIScreen.main.bounds.width >= 414
        weekendStackView.spacing = screenWidth ? 25 : 20
        //weekday
        applyCornerRadius(for: mondayButton, radius: mondayButton.frame.size.height / 2)
        applyCornerRadius(for: thuesdayButton, radius: thuesdayButton.frame.size.height / 2)
        Shadow.shadowToView(view: thuesdayView, radiusForPath: thuesdayButton.frame.size.height / 2, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        applyCornerRadius(for: wednesdayButton, radius: wednesdayButton.frame.size.height / 2)
        applyCornerRadius(for: thursdayButton, radius: thursdayButton.frame.size.height / 2)
        applyCornerRadius(for: fridayButton, radius: fridayButton.frame.size.height / 2)
        Shadow.shadowToView(view: fridayView, radiusForPath: fridayButton.frame.size.height / 2, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        applyCornerRadius(for: saturdayButton, radius: saturdayButton.frame.size.height / 2)
        applyCornerRadius(for: sundayButton, radius: sundayButton.frame.size.height / 2)
        Shadow.shadowToView(view: sundayView, radiusForPath: sundayButton.frame.size.height / 2, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        
        //day time
        applyCornerRadius(for: morningButton, radius: 10)
        Shadow.shadowToView(view: morningView, radiusForPath: 10, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        applyCornerRadius(for: dayButton, radius: 10)
        applyCornerRadius(for: eveningButton, radius: 10)
        
        //duration
        applyCornerRadius(for: time30Button, radius: 10)
        applyCornerRadius(for: time45Button, radius: 10)
        applyCornerRadius(for: time60Button, radius: 10)
        Shadow.shadowToView(view: time60View, radiusForPath: 10, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        
        //save button
        applyCornerRadius(for: saveButton, radius: 10)
        Shadow.shadowToView(view: saveView, radiusForPath: 10, shadowRadius: 3, alpha: 0.1, top: 2, left: 0)
        
        //textviews
        textViewOne.layer.masksToBounds = true
        textViewOne.layer.cornerRadius = 10
        textViewOne.layer.borderWidth = 1
        textViewOne.layer.borderColor = UIColor.lightGray.cgColor
        
        textViewTwo.layer.masksToBounds = true
        textViewTwo.layer.cornerRadius = 10
        textViewTwo.layer.borderWidth = 1
        textViewTwo.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func applyCornerRadius(for view: UIButton, radius: CGFloat) {
        view.layer.masksToBounds = true
        view.layer.cornerRadius = radius
    }
    


}
