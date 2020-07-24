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
        Shadow.shadowToView(view: shadowView, radiusForPath: 15, shadowRadius: 5, alpha: 0.3, top: 3, left: 0)
    }

}
