//
//  VideoLibraryCell.swift
//  FitPlace
//
//  Created by Vladyslav on 23.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class VideoLibraryCell: UICollectionViewCell {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = false
        
    }
    
    override func layoutSubviews() {
        shadowView.backgroundColor = .clear
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOpacity = 0.4
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), cornerRadius: 15).cgPath
    }

}
