//
//  CustomSectionCollectionReusableView.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/7/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class CustomSectionCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var lblHeader: UILabel!
    
    var mData:String! {
        didSet{
            lblHeader.text = mData
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
