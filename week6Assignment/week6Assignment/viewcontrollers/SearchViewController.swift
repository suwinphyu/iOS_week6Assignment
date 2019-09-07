//
//  SearchViewController.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/6/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit
import FittedSheets


class SearchViewController: UIViewController {

    static let identifier = "SearchViewController"
    
    @IBOutlet weak var txtfieldLocation: UITextField!
    @IBOutlet weak var txtfieldCheckIn: UITextField!
    @IBOutlet weak var txtFieldRooms: UITextField!
    @IBOutlet weak var txtFieldCheckOut: UITextField!
    @IBOutlet weak var txtFieldCount: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var imgViewMap: UIButton!
    @IBOutlet weak var collectionViewSearch: UICollectionView!
    
    private var datePicker: UIDatePicker?
    
    func setupLayout(){
        let layout = collectionViewSearch.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: (self.view.frame.width - 50), height: 200)
        btnSearch.layer.cornerRadius = 5
        imgViewMap.layer.cornerRadius = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupDatePicker()
        
        
        //collection view
        collectionViewSearch.delegate = self
        collectionViewSearch.dataSource = self
        
        //register for supplymentary section
        collectionViewSearch.register(UINib(nibName: String(describing: CustomSectionCollectionReusableView.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: CustomSectionCollectionReusableView.self))

        collectionViewSearch.registerForItem(strID: String(describing:OuterSearchCollectionViewCell.self ))
        
        
    }
    
    func setupDatePicker(){
        //check-in and out
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(self.selectDate(datePicker:)), for:.valueChanged)
        txtfieldCheckIn.inputView = datePicker
        txtFieldCheckOut.inputView = datePicker
    }
    
    @objc func selectDate(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        txtfieldCheckIn.text = dateFormatter.string(from: datePicker.date)
        txtFieldCheckOut.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    


    
    @IBAction func btnFilter(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: FilterViewController.identifier) as! FilterViewController
        let sheetController = SheetViewController(controller: viewcontroller,sizes:[.fixed(550)])
        
        // Adjust how the bottom safe area is handled on iPhone X screens
        sheetController.blurBottomSafeArea = false
        sheetController.adjustForBottomSafeArea = true
        
        // Turn off rounded corners
        sheetController.topCornersRadius = 0
        
        // Make corners more round
        sheetController.topCornersRadius = 15
        
        // Disable the dismiss on background tap functionality
        sheetController.dismissOnBackgroundTap = false
        
        // Extend the background behind the pull bar instead of having it transparent
        sheetController.extendBackgroundBehindHandle = true
        
        // Change the overlay color
        sheetController.overlayColor = UIColor.gray
        
        // Change the handle color
        sheetController.handleColor = UIColor.purple
        self.present(sheetController, animated: false, completion: nil)
        
       
    }

}


extension SearchViewController : UICollectionViewDelegate{
    //for section header- supplementary
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: CustomSectionCollectionReusableView.self), for: indexPath) as! CustomSectionCollectionReusableView
        
        let category = indexPath.section == 0 ? "TOP SEARCHS" : "RECENT SEARCH"
        
        sectionHeaderView.mData = category
        return sectionHeaderView
    }
    
}



extension SearchViewController :UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: OuterSearchCollectionViewCell.self), for: indexPath) as! OuterSearchCollectionViewCell
        return item
    }
    
    //for section header- supplementary
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
}
