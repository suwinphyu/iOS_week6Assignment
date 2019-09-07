//
//  CustomSectionHeaderTableViewCell.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/6/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class CustomSectionHeaderTableViewCell: UITableViewCell {

 
    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var btnPopular: UIButton!
    @IBOutlet weak var btnNearby: UIButton!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
