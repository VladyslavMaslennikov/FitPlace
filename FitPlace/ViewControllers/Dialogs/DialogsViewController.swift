//
//  DialogsViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class DialogsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private let messageCellId = "DialogCell"
    private let messageCellDateId = "MessageDateCell"
    
    private let messages = [
        MessageCell(isDialog: true, name: "Поддержка", image: "dialog1", text: "Здравствуйте! Спасибо. что пользуетесь нашим приложением, удачного дня!", date: "25.05.2020 16:35", day: ""),
        MessageCell(isDialog: false, name: "", image: "", text: "", date: "", day: "Сегодня"),
        MessageCell(isDialog: true, name: "Ольга Петрова", image: "dialog2", text: "Замечательно! До встречи в субботу!", date: "17:54", day: ""),
        MessageCell(isDialog: true, name: "Иван Кропоткин", image: "dialog3", text: "Видео про увеличение мышечной массы оказалось очень познавательным, советую.", date: "12:05", day: ""),
        MessageCell(isDialog: false, name: "", image: "", text: "", date: "", day: "25.07.2020"),
        MessageCell(isDialog: true, name: "Светлана Вересаева", image: "dialog4", text: "Да, я тоже занималась онлайн с этим тренером, мне очень понравилось.", date: "13:22", day: nil),
        MessageCell(isDialog: true, name: "Максим Крыляев", image: "dialog5", text: "Увидимся в субботу на трене.", date: "18:00", day: nil),
        MessageCell(isDialog: true, name: "Петр Дроздов", image: "dialog6", text: "Покупал у них, цена не большая по сравнению с другим магазином.", date: "11:47", day: nil),
        MessageCell(isDialog: true, name: "Маша Вяткина", image: "dialog7", text: "Занимаюсь йогой с Уткиной, она супер.", date: "10:07", day: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor
        setupTableView()
        navigationController?.navigationBar.isTranslucent = true
        
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.allowsSelection = false
        tableView.register(UINib(nibName: messageCellId, bundle: nil), forCellReuseIdentifier: messageCellId)
        tableView.register(UINib(nibName: messageCellDateId, bundle: nil), forCellReuseIdentifier: messageCellDateId)
        tableView.backgroundColor = .backgroundThemeColor
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let messageCell = tableView.dequeueReusableCell(withIdentifier: messageCellId, for: indexPath) as! DialogCell
        let dateCell = tableView.dequeueReusableCell(withIdentifier: messageCellDateId, for: indexPath) as! MessageDateCell
        
        let message = messages[indexPath.row]
        if message.isDialog {
            messageCell.dateLabel.text = message.date
            messageCell.messageLabel.text = message.text
            messageCell.userNameLabel.text = message.name
            messageCell.userPhoto.image = UIImage(named: message.image!)
            return messageCell
        }
        dateCell.dayLabel.text = message.day
        return dateCell
    }



}

private struct MessageCell {
    let isDialog: Bool
    let name: String?
    let image: String?
    let text: String?
    let date: String?
    let day: String?
}
