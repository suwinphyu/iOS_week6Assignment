//
//  FilterViewController.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/7/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit
import FittedSheets
import iOSDropDown

class FilterViewController: UIViewController {

    static let identifier = "FilterViewController"
    @IBOutlet weak var btnNone: UIButton!
    @IBOutlet weak var btnFilterNow: UIButton!
    @IBOutlet weak var imgMap: UIImageView!
    @IBOutlet weak var dropDownPrice: DropDown!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        btnNone.layer.cornerRadius = 5
        btnFilterNow.layer.cornerRadius = 5
        imgMap.layer.cornerRadius = 5
        
        setupDropDownforPrice()
        
        }
 
    func setupDropDownforPrice(){
        // Dropdown
        dropDownPrice.optionArray = ["Price $55", "Price 98", "Price $67","Price 81"]
        //Its Id Values and its optional
        dropDownPrice.optionIds = [1,23,54,22]
    }
    
    @IBAction func btnCancel(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    @IBAction func btnReset(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    


}


    

