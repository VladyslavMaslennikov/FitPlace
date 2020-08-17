//
//  PayViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 24.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var balanceView: UIView!
    @IBOutlet weak var subscriptionsView: UIView!
    @IBOutlet weak var operationsView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let operations = [
        AccountOperation(title: "Покупка видео", description: "Комплексное увеличение мышечной массы", cost: "- 1 200 руб.", time: "23.06.2020 16:35"),
        AccountOperation(title: "Пополнение", description: "Пополнение с карты *4651", cost: "+ 15 000 руб.", time: "22.06.2020 12:00"),
        AccountOperation(title: "Покупка товаров", description: "Покупка спортивного инвентаря", cost: "- 7 200 руб.", time: "10.06.2020 12:00"),
        AccountOperation(title: "Тренировка", description: "Индивидуальная тренировка", cost: "- 1 300 руб.", time: "04.06.2020 12:00"),
        AccountOperation(title: "Пополнение", description: "Пополнение с карты *4651", cost: "+ 8 500 руб.", time: "29.05.2020 12:00"),
        AccountOperation(title: "Бонус", description: "Приглашённый пользователь", cost: "+ 500 руб.", time: "01.05.2020 12:00")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundThemeColor
        scrollView.bounces = false
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        Shadow.shadowToView2(view: cardView, radiusForPath: 25, shadowRadius: 5, alpha: 0.4, top: 2, left: 0)
        Shadow.shadowToView(view: balanceView, radiusForPath: 15, shadowRadius: 3, alpha: 0.4, top: 2, left: 0)
        Shadow.shadowToView(view: subscriptionsView, radiusForPath: 15, shadowRadius: 3, alpha: 0.4, top: 2, left: 0)
        Shadow.shadowToView2(view: operationsView, radiusForPath: 15, shadowRadius: 9, alpha: 0.5, top: 0, left: 0)
        
    }

}

extension PayViewController: UITableViewDelegate, UITableViewDataSource {
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.allowsSelection = false
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PayTableViewCell") as! PayTableViewCell
        let index = indexPath.row
        let operation = operations[index]
        cell.operationNameLabel.text = operation.title
        cell.operationDescriptionLabel.text = operation.description
        cell.operationCostLabel.text = operation.cost
        cell.operationDateLabel.text = operation.time
        return cell
    }
}

private struct AccountOperation {
    let title: String
    let description: String
    let cost: String
    let time: String
}
