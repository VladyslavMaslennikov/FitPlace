//
//  RightMessageBubbleViewCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class RightMessageBubbleViewCell: MessageBubbleCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func configureLayout() {
        super.configureLayout()
        
        NSLayoutConstraint.activate([
            
            contentView.topAnchor.constraint(
                equalTo: bubbleBackground.topAnchor, constant: -10),
            contentView.trailingAnchor.constraint(
                equalTo: bubbleBackground.trailingAnchor, constant: 40),
            contentView.bottomAnchor.constraint(
                equalTo: bubbleBackground.bottomAnchor, constant: 10),
            contentView.leadingAnchor.constraint(
                lessThanOrEqualTo: bubbleBackground.leadingAnchor, constant: -30),
            
            
            bubbleBackground.topAnchor.constraint(
                equalTo: bubbleMessage.topAnchor, constant: -5),
            bubbleBackground.trailingAnchor.constraint(
                equalTo: bubbleMessage.trailingAnchor,constant: 20),
            bubbleBackground.bottomAnchor.constraint(
                equalTo: bubbleMessage.bottomAnchor, constant: 5),
            bubbleBackground.leadingAnchor.constraint(
                equalTo: bubbleMessage.leadingAnchor, constant: -10),
            
            timeSentLabel.heightAnchor.constraint(equalToConstant: 15),
            timeSentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -1),
            timeSentLabel.bottomAnchor.constraint(equalTo: bubbleBackground.bottomAnchor, constant: 0),
            timeSentLabel.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
}
