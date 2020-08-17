//
//  VideoCardViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 23.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class VideoCardViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var shadowViewButton: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    private let cellId = "VideoCardCell"
    private let videoCards: [(image: String, title: String, description: String, time: String)] = [("video_card1", "power training".uppercased(), "Занятие с элементами силового тренинга, направленное на развитие основных мышечных групп".uppercased(), "11 мин.".uppercased()), ("video_card2", "power training".uppercased(), "Занятие с элементами силового тренинга, направленное на развитие основных мышечных групп".uppercased(), "18 мин.".uppercased()), ("video_card3", "power training".uppercased(), "Занятие с элементами силового тренинга, направленное на развитие основных мышечных групп".uppercased(), "15 мин.".uppercased())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.backgroundColor = .clear
        view.backgroundColor = .backgroundThemeColor
        
        setUpCollectionView()
    }
    
    

    override func viewDidLayoutSubviews() {
        Shadow.shadowToView2(view: shadowViewButton, radiusForPath: 25, shadowRadius: 7, alpha: 1.0, top: 6, left: 0)
    }
    
}

extension VideoCardViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videoCards.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! VideoCardCell
        let card = videoCards[indexPath.row]
        cell.imageView.image = UIImage(named: card.image)
        cell.titleLabel.text = card.title
        cell.descriptionTextView.text = card.description
        cell.timeTitleLabel.text = card.time
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
        collectionView.layer.masksToBounds = true
        scrollView.delegate = self
        scrollView.decelerationRate = .fast
        scrollView.showsVerticalScrollIndicator = false
        scrollView.bounces = false
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //    let heightForPros = view.frame.height
    //    let heightForBasic = view.frame.height
    //    let screenWidth = UIScreen.main.bounds.width
        return CGSize(width: collectionView.frame.size.width - 20, height: collectionView.frame.height / 3)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    }
}

