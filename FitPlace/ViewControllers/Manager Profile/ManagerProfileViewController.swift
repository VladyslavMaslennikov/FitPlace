//
//  ManagerProfileViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 25.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class ManagerProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var sendInvitationShadow: UIView!
    @IBOutlet weak var messageButtonShadow: UIView!
    
    private let cellId = "OtherDataCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        Shadow.shadowToView(view: sendInvitationShadow, radiusForPath: 25, shadowRadius: 3, alpha: 0.4, top: 2, left: 0)
        Shadow.shadowToView(view: messageButtonShadow, radiusForPath: 25, shadowRadius: 3, alpha: 0.4, top: 2, left: 0)
    }
    

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
        tableView.tableFooterView = UIView()
        tableView.backgroundColor = .clear
        tableView.register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
        tableView.isScrollEnabled = false
        tableView.allowsSelection = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OtherDataCell", for: indexPath) as! OtherDataCell
        
        let regularFont = UIFont(name: Montserrat(.regular).font, size: 14)
        let semiBoldFont = UIFont(name: Montserrat(.semibold).font, size: 14)
        let index = indexPath.row
        switch index {
        case 0:
            cell.mainTitleLabel.text = "Баланс"
            cell.mainTitleLabel.font = semiBoldFont
            cell.additionalLabel.text = "7 000 руб."
            cell.additionalLabel.isHidden = false
            cell.additionalLabel.font = semiBoldFont
            cell.arrowRightImage.isHidden = false
            return cell
        case 1:
            cell.switchView.isHidden = false
            cell.mainTitleLabel.text = "Уведомление сообщений"
            cell.mainTitleLabel.font = regularFont
            return cell
        case 2:
            cell.mainTitleLabel.text = "Продвижение"
            cell.mainTitleLabel.font = regularFont
            cell.arrowRightImage.isHidden = false
            return cell
        case 3:
            cell.mainTitleLabel.text = "Изменить номер телефона"
            cell.mainTitleLabel.font = regularFont
            cell.arrowRightImage.isHidden = false
            return cell
        case 4:
            cell.arrowRightImage.isHidden = false
            cell.mainTitleLabel.font = regularFont
            cell.mainTitleLabel.text = "Выйти из аккаунта"
            return cell
        default:
            return cell
        }
    }
    
}
