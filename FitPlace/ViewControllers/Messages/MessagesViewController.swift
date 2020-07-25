//
//  MessagesViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var shadowView: UIView!
    
    private let messages = [
        MessageInfo(isDateSection: false, isLeft: true, message: "Пожалуйста, обращайтесь к нам в любое время", sentTime: "17:35"),
        MessageInfo(isDateSection: false, isLeft: false, message: "Здравствуйте, спасибо большое за консультацию, у меня получилось пополнить баланс и приобрести у вас товары.", sentTime: "16:30"),
        MessageInfo(isDateSection: true, isLeft: false, message: nil, sentTime: "Сегодня"),
        MessageInfo(isDateSection: false, isLeft: true, message: "Пожалуйста, обращайтес к нам в любое время. Хорошего дня.", sentTime: "17:35"),
        MessageInfo(isDateSection: false, isLeft: false, message: "Хорошо, сделаю все по вашей инструкции и закажу у Вас спортивный инвентарь, если появятся вопросы, я напишу.", sentTime: "12:10"),
        MessageInfo(isDateSection: true, isLeft: false, message: nil, sentTime: "21.06.2020")
    ]
    
    private let leftBubble = "LeftMessageBubbleCell"
    private let rightBubble = "RightMessageBubbleCell"
    private let dateSection = "MessageDateSectionCell"
    private let userPhoto = "dialog1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: shadowView, radiusForPath: 0, shadowRadius: 3, alpha: 0.4, top: -2, left: 0)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(LeftMessageBubbleCell.self, forCellReuseIdentifier: leftBubble)
        tableView.register(RightMessageBubbleViewCell.self, forCellReuseIdentifier: rightBubble)
        tableView.register(MessageDateSectionCell.self, forCellReuseIdentifier: dateSection)
        
        tableView.transform = CGAffineTransform(rotationAngle: -(CGFloat)(Double.pi));
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let leftBubbleCell = tableView.dequeueReusableCell(withIdentifier: leftBubble, for: indexPath) as! LeftMessageBubbleCell
        let rightBubbleCell = tableView.dequeueReusableCell(withIdentifier: rightBubble, for: indexPath) as! RightMessageBubbleViewCell
        let dateSectionCell = tableView.dequeueReusableCell(withIdentifier: dateSection, for: indexPath) as! MessageDateSectionCell
        
        leftBubbleCell.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        rightBubbleCell.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        dateSectionCell.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        let message = messages[indexPath.row]
        if message.isDateSection {
            dateSectionCell.dateMessage.text = message.sentTime
            return dateSectionCell
        }
        
        if message.isLeft {
            leftBubbleCell.bubbleMessage.text = message.message
            leftBubbleCell.timeSentLabel.text = message.sentTime
            leftBubbleCell.bubbleImageView.image = UIImage(named: userPhoto)
            return leftBubbleCell
        }
        rightBubbleCell.bubbleMessage.text = message.message
        rightBubbleCell.timeSentLabel.text = message.sentTime
        return rightBubbleCell
    }
    

}

private struct MessageInfo {
    let isDateSection: Bool
    let isLeft: Bool
    let message: String?
    let sentTime: String
}
