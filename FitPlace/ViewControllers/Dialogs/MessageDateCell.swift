//
//  MessageDateCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class MessageDateCell: UITableViewCell {

    @IBOutlet weak var dayLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .backgroundThemeColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
