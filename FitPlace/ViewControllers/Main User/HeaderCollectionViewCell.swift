//
//  HeaderCollectionViewCell.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textBackgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        let screenWidth = UIScreen.main.bounds.width
        titleLabel.font = UIFont(name: Montserrat(.bold).font, size: screenWidth >= 414 ? 15 : 12)
    }
    
    override func layoutSubviews() {
        Shadow.shadowToView(view: self, radiusForPath: 15, shadowRadius: 2, alpha: 0.4)
    }

}
