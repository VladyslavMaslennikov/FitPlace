//
//  LeftMessageBubbleCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class LeftMessageBubbleCell: MessageBubbleCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func configureLayout() {
        super.configureLayout()
        
        NSLayoutConstraint.activate([
            
            contentView.topAnchor.constraint(
                equalTo: bubbleBackground.topAnchor, constant: -10),
            contentView.leadingAnchor.constraint(
                equalTo: bubbleBackground.leadingAnchor, constant: -50),
            contentView.bottomAnchor.constraint(
                equalTo: bubbleBackground.bottomAnchor, constant: 10),
            contentView.trailingAnchor.constraint(
                greaterThanOrEqualTo: bubbleBackground.trailingAnchor, constant: 40),
            
            
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
            timeSentLabel.widthAnchor.constraint(equalToConstant: 30),
            
            bubbleImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            bubbleImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            bubbleImageView.widthAnchor.constraint(equalToConstant: 30),
            bubbleImageView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

}
