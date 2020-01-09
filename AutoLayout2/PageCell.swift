//
//  PageCell.swift
//  AutoLayout2
//
//  Created by Wale on 09/01/2020.
//  Copyright © 2020 Wale. All rights reserved.
//

import UIKit


class PageCell:UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
