//
//  MessageBubbleCell.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class MessageBubbleCell: UITableViewCell {
    
    var bubbleBackground: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        return view
    }()
    
    var bubbleMessage: UILabel = {
        let messageLabel = UILabel(frame: .zero)
        messageLabel.textColor = .black
        messageLabel.font = UIFont(name: Montserrat(.regular).font, size: 13)
        messageLabel.numberOfLines = 0
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        return messageLabel
    }()
    
    var timeSentLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont(name: Montserrat(.regular).font, size: 10)
        label.textColor = .darkGray
        label.backgroundColor = .clear
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var bubbleImageView: UIImageView = {
      let bubbleImageView = UIImageView(frame: .zero)
//      bubbleImageView.contentMode = .scaleToFill
      bubbleImageView.translatesAutoresizingMaskIntoConstraints = false
      return bubbleImageView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLayout() {
        backgroundColor = .clear
        contentView.addSubview(bubbleBackground)
        contentView.addSubview(bubbleMessage)
        contentView.addSubview(timeSentLabel)
        contentView.addSubview(bubbleImageView)
    }

}
