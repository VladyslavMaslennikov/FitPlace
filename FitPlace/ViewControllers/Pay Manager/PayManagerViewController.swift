//
//  PayManagerViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class PayManagerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var cardShadow: UIView!
    @IBOutlet weak var operationsShadow: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var operationsHistoryLabel: UILabel!
    
    private let operations = [
        OperationInfo(image: "pay_manager_1", title: "Тренер", description: "Максим Соловьёв", price: "+ 500 руб.", date: "20.06.2020 12:00"),
        OperationInfo(image: "pay_manager_2", title: "Тренер", description: "Екатерина Пчёлкина", price: "+ 500 руб.", date: "10.06.2020 07:30"),
        OperationInfo(image: "pay_manager_3", title: "Пользователь", description: "Василина Добре", price: "+ 500 руб.", date: "01.06.2020 05:20"),
        OperationInfo(image: "pay_manager_4", title: "Пользователь", description: "Денис Васильев", price: "+ 500 руб.", date: "21.05.2020 12:17"),
        OperationInfo(image: "pay_manager_5", title: "Тренер", description: "Елизавета Строгинина", price: "+ 500 руб.", date: "01.05.2020 19:40"),
        OperationInfo(image: "pay_manager_6", title: "Тренер", description: "Кирилл Лисовец", price: "+ 500 руб.", date: "28.04.2020 20:01")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor
        setupTableView()
    }
    

    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: operationsShadow, radiusForPath: 20, shadowRadius: 4, alpha: 0.4, top: -3, left: 0)
        cardShadow.backgroundColor = .clear
        let layer = cardShadow.layer
        layer.masksToBounds = false
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.4
        layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: view.frame.size.width - 40, height: cardShadow.frame.height), cornerRadius: 20).cgPath
        operationsHistoryLabel.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        operationsHistoryLabel.layer.masksToBounds = true
        operationsHistoryLabel.layer.cornerRadius = 20
    }
    
    private func setupTableView() {
        tableView.register(PayManagerCell.self, forCellReuseIdentifier: "PayManagerCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PayManagerCel", for: indexPath) as! PayManagerCell
        let operation = operations[indexPath.row]
        cell.userPhoto.image = UIImage(named: operation.image)
        cell.titleLabel.text = operation.title
        cell.descriptionCellLabel.text = operation.description
        cell.priceLabel.text = operation.price
        cell.dateLabel.text = operation.date
        return cell
    }
    

}

 struct OperationInfo {
    let image: String
    let title: String
    let description: String
    let price: String
    let date: String
}
