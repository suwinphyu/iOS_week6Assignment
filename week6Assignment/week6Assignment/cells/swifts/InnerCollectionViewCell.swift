//
//  InnerCollectionViewCell.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/7/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class InnerCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var btnPrice: UIButton!
    @IBOutlet weak var imgViewHotel: UIImageView!
    @IBOutlet weak var lblHotelAddress: UILabel!
    @IBOutlet weak var lblHotelName: UILabel!
    
    var mData  : HotelVO!{
        didSet{
            lblHotelName.text = mData.name
            lblHotelAddress.text = mData.address
            btnPrice.titleLabel?.text = mData.price
            lblRating.text = mData.rating
            imgViewHotel.image = mData.image
            btnPrice.setTitle(mData.price, for: .normal)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
