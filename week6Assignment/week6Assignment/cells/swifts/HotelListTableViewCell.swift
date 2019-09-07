//
//  HotelListTableViewCell.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/6/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class HotelListTableViewCell: UITableViewCell {

   
    @IBOutlet weak var lblHotelName: UILabel!
    @IBOutlet weak var lblHotelAddress: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var lblservices: UILabel!
    @IBOutlet weak var lblFacability: UILabel!
    @IBOutlet weak var btnPrice: UIButton!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var imgViewHotel: UIImageView!
    
    var mData  : HotelVO!{
        didSet{
           lblHotelName.text = mData.name
            lblHotelAddress.text = mData.address
            lblDiscount.text = mData.discount
            lblservices.text = mData.services
            lblFacability.text = mData.facality
            btnPrice.titleLabel?.text = mData.price
            lblRating.text = mData.rating
            imgViewHotel.image = mData.image
            btnPrice.setTitle(mData.price, for: .normal)
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
         self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
