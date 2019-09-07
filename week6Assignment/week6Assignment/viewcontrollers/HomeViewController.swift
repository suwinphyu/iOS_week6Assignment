//
//  HomeViewController.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/6/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit
import iOSDropDown

class HomeViewController: UIViewController {

    static let identifier = "HomeViewController"
    
    @IBOutlet weak var dropDown: DropDown!
    @IBOutlet weak var tableViewHome: UITableView!
    @IBOutlet weak var imageViewProfile: UIImageView!
   
    
    
    var mData = HotelVO.getNearByHotel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Dropdown
        dropDown.optionArray = ["Dhaka", "Yangon", "New York","Hua Hin"]
        //Its Id Values and its optional
        dropDown.optionIds = [1,23,54,22]
        
     
        //badge notification
        let notificationButton = SSBadgeButton()
        notificationButton.frame = CGRect(x: view.frame.width - 22, y: view.frame.height - 22, width: 44, height: 44)
        notificationButton.setImage(imageViewProfile.image?.withRenderingMode(.alwaysTemplate), for: .normal)
        notificationButton.badgeEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 15)
        notificationButton.badge = "3"
        view.addSubview(notificationButton)

       
        

        imageViewProfile.layer.cornerRadius = imageViewProfile.frame.width / 2
        tableViewHome.delegate = self
        tableViewHome.dataSource = self
        
        tableViewHome.registerForCell(strID: String(describing: HotelListTableViewCell.self))
        tableViewHome.registerForCell(strID: String(describing: CustomSectionHeaderTableViewCell.self))
    }
    

    
}

extension HomeViewController : UITableViewDelegate {
    //Header view
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomSectionHeaderTableViewCell.self)) as! CustomSectionHeaderTableViewCell
         return cell
    
 
    }
    
    //Header view
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomSectionHeaderTableViewCell.self))
        return cell?.bounds.height ?? 0
    }
}




extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HotelListTableViewCell.self), for: indexPath) as! HotelListTableViewCell
        cell.mData = mData[indexPath.row]
       return cell
    }
    
  
    
}


