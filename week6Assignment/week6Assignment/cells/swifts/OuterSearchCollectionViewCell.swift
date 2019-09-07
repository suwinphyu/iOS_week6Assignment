//
//  OuterSearchCollectionViewCell.swift
//  week6Assignment
//
//  Created by Su Win Phyu on 9/7/19.
//  Copyright © 2019 swp. All rights reserved.
//

import UIKit

class OuterSearchCollectionViewCell: UICollectionViewCell {

   
     var mData = HotelVO.getTopSearchHotels()
    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
        

        
        let layout = innerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width:innerCollectionView.frame.width - 120 , height: innerCollectionView.frame.height)
        
        // Initialization code
        innerCollectionView.delegate = self
        innerCollectionView.dataSource = self
        innerCollectionView.registerForItem(strID: String(describing: InnerCollectionViewCell.self))
    }

}

extension OuterSearchCollectionViewCell : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: InnerCollectionViewCell.self), for: indexPath)
            as! InnerCollectionViewCell
        item.mData = mData[indexPath.row]
        return item
    }
}

extension OuterSearchCollectionViewCell : UICollectionViewDelegate{}

