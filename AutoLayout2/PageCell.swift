//
//  PageCell.swift
//  AutoLayout2
//
//  Created by Wale on 09/01/2020.
//  Copyright © 2020 Wale. All rights reserved.
//

import UIKit


class PageCell:UICollectionViewCell{
    
    var page: Page? {
        didSet{
//            print(page?.imageName)
            guard let unwrappedPage = page else {return}
            bearImageView.image = UIImage(named: unwrappedPage.imageName)
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText, attributes: [NSMutableAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n\n \(unwrappedPage.bodyText)", attributes: [NSMutableAttributedString.Key.font:UIFont.systemFont(ofSize: 13),NSMutableAttributedString.Key.foregroundColor:UIColor.gray]))
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
            
        }
    }
    
    private let bearImageView: UIImageView = {
           let imageView = UIImageView(image: UIImage(named:"bear_first"))
           //         this enables autolayout for our view
           imageView.translatesAutoresizingMaskIntoConstraints = false
           imageView.contentMode = .scaleAspectFit
           return imageView
       }()
    private let descriptionTextView: UITextView = {
            let textView = UITextView()
            let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSMutableAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
            
            attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads of fun? Don't wait any longer! We hope to see you in our stores soon.", attributes: [NSMutableAttributedString.Key.font:UIFont.systemFont(ofSize: 13),NSMutableAttributedString.Key.foregroundColor:UIColor.gray]))
        textView.attributedText = attributedText
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.textAlignment = .center
            textView.isEditable = false
            textView.isScrollEnabled = false
            return textView;
        }()
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
//        backgroundColor = .purple
        setUpLayout()
    }
    
        private func setUpLayout(){
            let topImageContainerView = UIView()
    
            addSubview(topImageContainerView)
  
            topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
            topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
  
            topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
            topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            topImageContainerView.addSubview(bearImageView)
            bearImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
            bearImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
            bearImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
                    bearImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
           
                    bearImageView.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
                    bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
                    bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            
            addSubview(descriptionTextView)
            descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
            descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor,constant: 24).isActive = true
            descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor,constant: -24).isActive = true
            descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
