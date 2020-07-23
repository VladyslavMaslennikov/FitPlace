//
//  OtherDataCell.swift
//  FitPlace
//
//  Created by Vladyslav on 23.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class OtherDataCell: UITableViewCell {
    
    
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var arrowRightImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
