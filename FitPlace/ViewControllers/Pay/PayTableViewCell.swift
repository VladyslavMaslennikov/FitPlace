//
//  PayTableViewCell.swift
//  FitPlace
//
//  Created by Vladyslav on 24.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class PayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var operationNameLabel: UILabel!
    @IBOutlet weak var operationCostLabel: UILabel!
    @IBOutlet weak var operationDescriptionLabel: UILabel!
    @IBOutlet weak var operationDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
