//
//  VideoCardCell.swift
//  FitPlace
//
//  Created by Vladyslav on 23.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class VideoCardCell: UICollectionViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var timeTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = false
        cellBackgroundView.layer.masksToBounds = true
        cellBackgroundView.layer.cornerRadius = 15
    }

    override func layoutSubviews() {
        Shadow.shadowToView(view: self, radiusForPath: 15, shadowRadius: 2, alpha: 0.4)
    }
}
