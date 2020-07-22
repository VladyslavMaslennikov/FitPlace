//
//  MainUserViewController.swift
//  FitPlace
//
//  Created by Vladyslav on 22.07.2020.
//  Copyright © 2020 com.quantag-it. All rights reserved.
//

import UIKit

class MainUserViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var headerBackgroundView: UIView!
    @IBOutlet weak var headerCollectionView: UICollectionView!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var sectionOne: UIView!
    @IBOutlet weak var sectionTwo: UIView!
    @IBOutlet weak var sectionThree: UIView!
    @IBOutlet weak var sectionFour: UIView!
    @IBOutlet weak var sectionFive: UIView!
    
    let headerCellId = "HeaderCollectionViewCell"
    private let images = ["header_photo1", "header_photo2", "header_photo3"]
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHeaderCollectionView()
        setupScrollView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    //MARK: - UI Setup
    private func setupUI() {
        stackView.layer.masksToBounds = false
        view.backgroundColor = .backgroundThemeColor
        applyShadowToLayer(view: sectionOne)
        applyShadowToLayer(view: sectionTwo)
        applyShadowToLayer(view: sectionThree)
        applyShadowToLayer(view: sectionFour)
        applyShadowToLayer(view: sectionFive)
    }
   
    private func applyShadowToLayer(view: UIView) {
        let layer = view.layer
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 15
        layer.shadowOpacity = 0.5
        let rect = CGRect(x: 5, y: 5, width: view.bounds.width - 40, height: view.bounds.height - 10)
        layer.shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: 5).cgPath
    }

}

//MARK: - Collection View Setup + Scroll View
extension MainUserViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: headerCellId, for: indexPath) as! HeaderCollectionViewCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
    
    func setUpHeaderCollectionView() {
        headerCollectionView.delegate = self
        headerCollectionView.dataSource = self
        headerCollectionView.register(UINib(nibName: headerCellId, bundle: nil), forCellWithReuseIdentifier: headerCellId)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        headerCollectionView.collectionViewLayout = layout
        headerCollectionView.isScrollEnabled = true
        headerCollectionView.backgroundColor = .clear
        headerCollectionView.showsHorizontalScrollIndicator = false
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: headerBackgroundView.frame.width / 2.9, height: headerBackgroundView.frame.height - 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func setupScrollView() {
        scrollView.delegate = self
        scrollView.bounces = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isDirectionalLockEnabled = true
    }
    
}
