//
//  DialogCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class DialogCell: UITableViewCell {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .backgroundThemeColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        shadowView.backgroundColor = .clear
        let layer = shadowView.layer
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.4
        
        layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: bounds.size.width - 20, height: bounds.size.height - 20), cornerRadius: 20).cgPath
    }
    
}
