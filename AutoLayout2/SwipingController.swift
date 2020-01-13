//
//  SwipingController.swift
//  AutoLayout2
//
//  Created by Wale on 09/01/2020.
//  Copyright © 2020 Wale. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController,UICollectionViewDelegateFlowLayout{
//    let imageNames = ["bear_first","heart_second","leaf_third"]
//    let headerStrings = ["Join us today in our fun and games","Subscribe and get coupons on our daily events","VIP Member Special Services"]
    
    let pages = [
        
        Page(imageName: "bear_first", headerText: "Join us today in our fun and games",bodyText:"Are you ready for loads of fun? Don't wait any longer! We hope to see you in our stores soon." ),
        Page(imageName: "heart_second", headerText: "Subscribe and get coupons on our daily events",bodyText: "Get notified of the savings immediately when we announce them on our website. Make sure to also give us any feedback you have"),
        Page(imageName: "leaf_third", headerText: "VIP Member Special Services",bodyText: "")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        let page = pages[indexPath.item]
        cell.page = page
//        cell.bearImageView.image = UIImage(named: page.imageName)
//        cell.descriptionTextView.text = page.headerText
//        let imageName = imageNames[indexPath.item]
//        cell.bearImageView.image = UIImage(named: imageName)
//        cell.descriptionTextView.text = headerStrings[indexPath.item]
//        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
