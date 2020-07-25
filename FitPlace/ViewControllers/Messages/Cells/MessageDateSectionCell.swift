//
//  MessageDateSectionCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class MessageDateSectionCell: UITableViewCell {
    
    var dateMessage: UILabel = {
        let messageLabel = UILabel(frame: .zero)
        messageLabel.textColor = .black
        messageLabel.font = UIFont(name: Montserrat(.regular).font, size: 10)
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        return messageLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        addSubview(dateMessage)
        
        NSLayoutConstraint.activate([
            dateMessage.centerXAnchor.constraint(equalTo: centerXAnchor),
            dateMessage.topAnchor.constraint(equalTo: topAnchor),
            dateMessage.bottomAnchor.constraint(equalTo: bottomAnchor),
            dateMessage.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
