//
//  ProfileUserController.swift
//  FitPlace
//
//  Created by Vladyslav on 23.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class ProfileUserController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let userDataCellId = "UserDataCell"
    private let otherDataCellId = "OtherDataCell"
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundThemeColor
        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = .backgroundThemeColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: Montserrat(.bold).font, size: 16) as Any]
        
        tableViewSetup()
    }
    
    private func tableViewSetup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.allowsSelection = false
        tableView.isScrollEnabled = false
        tableView.backgroundColor = .clear
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: userDataCellId, bundle: nil), forCellReuseIdentifier: userDataCellId)
        tableView.register(UINib(nibName: otherDataCellId, bundle: nil), forCellReuseIdentifier: otherDataCellId)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: userDataCellId, for: indexPath) as! UserDataCell
        let otherCell = tableView.dequeueReusableCell(withIdentifier: otherDataCellId, for: indexPath) as! OtherDataCell
        
        let screenWidth = UIScreen.main.bounds.width >= 414
        let smallFontBold = UIFont(name: Montserrat(.bold).font, size: 14)
        let bigFontBold = UIFont(name: Montserrat(.bold).font, size: 17)
        let smallFontRegular = UIFont(name: Montserrat(.regular).font, size: 13)
        let bigFontRegular = UIFont(name: Montserrat(.regular).font, size: 16)
        
        let boldFont = screenWidth ? bigFontBold : smallFontBold
        let regularFont = screenWidth ? bigFontRegular : smallFontRegular
        
        let index = indexPath.row
        
        switch index {
        case 0:
            return userCell
        case 1:
            otherCell.mainTitleLabel.text = "Баланс"
            otherCell.mainTitleLabel.font = boldFont
            otherCell.additionalLabel.text = "13 250 руб."
            otherCell.additionalLabel.textAlignment = .center
            otherCell.additionalLabel.font = boldFont
            otherCell.additionalLabel.isHidden = false
            otherCell.arrowRightImage.isHidden = false
            return otherCell
        case 2:
            otherCell.mainTitleLabel.text = "Уведомления сообщений"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.switchView.isHidden = false
            return otherCell
        case 3:
            otherCell.mainTitleLabel.text = "Уведомления о тренировках"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.additionalLabel.text = "-    30    +"
            otherCell.additionalLabel.textAlignment = .right
            otherCell.additionalLabel.isHidden = false
            return otherCell
        case 4:
            otherCell.mainTitleLabel.text = "Мои данные"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.arrowRightImage.isHidden = false
            return otherCell
        case 5:
            otherCell.mainTitleLabel.text = "Пригласить друга"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.arrowRightImage.isHidden = false
            return otherCell
        case 6:
            otherCell.mainTitleLabel.text = "Изменить номер телефона"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.arrowRightImage.isHidden = false
            return otherCell
        case 7:
            otherCell.mainTitleLabel.text = "Выйти из аккаунта"
            otherCell.mainTitleLabel.font = regularFont
            otherCell.arrowRightImage.isHidden = false
            return otherCell
        default:
            return otherCell
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
