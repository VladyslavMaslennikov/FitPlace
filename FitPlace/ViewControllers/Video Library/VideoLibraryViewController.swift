//
//  VideoLibraryViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class VideoLibraryViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let images: [String] = ["video_library2", "video_library4", "video_library3", "video_library1"]
    private let titles: [String] = ["EXPRESS FT", "MAKE BODY", "SOFT FITNESS", "POWER TRAINING"]
    private let descriptions: [String] = ["короткое энергоемкое занятие, в основе которого многосуставные движения во всех плоскостях".uppercased(), "универсальная тренировка на снижение веса и укрепление всех основных мышечных групп".uppercased(), "тренировка низкой или средней интенсивности для новичков и тех, кому не показаны высокоинтенсивные нагрузки".uppercased(), "Занятие с элементами силового тренинга, направленное на развитие мышечных групп".uppercased()]
    private let cellId = "VideoLibraryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor
        setUpCollectionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    

}


extension VideoLibraryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return images.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! VideoLibraryCell
    let index = indexPath.row
    cell.imageView.image = UIImage(named: images[index])
    cell.titleLabel.text = titles[index]
    cell.titleLabel.textAlignment = index % 2 == 0 ? .left : .right
    cell.descriptionLabel.text = descriptions[index]
    cell.descriptionLabel.textAlignment = index % 2 == 0 ? .left : .right
    return cell
}


func setUpCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(UINib(nibName: cellId, bundle: nil), forCellWithReuseIdentifier: cellId)
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    collectionView.collectionViewLayout = layout
    collectionView.isScrollEnabled = true
    collectionView.backgroundColor = .clear
    collectionView.showsVerticalScrollIndicator = false
    collectionView.layer.masksToBounds = false
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 10
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//    let heightForPros = view.frame.height
//    let heightForBasic = view.frame.height
//    let screenWidth = UIScreen.main.bounds.width
    return CGSize(width: collectionView.frame.size.width - 20, height: collectionView.frame.height / 3.5)
}

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
}
}
