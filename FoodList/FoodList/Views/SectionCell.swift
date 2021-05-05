//
//  SectionCell.swift
//  FoodList
//
//  Created by Anamika Deb on 4/5/21.
//

import Foundation
import UIKit

class SectionCell: UITableViewCell{
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var contact: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var foodList: [FoodList] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: "FoodCell", bundle: nil), forCellWithReuseIdentifier: "FoodCell")

    }
    
    func configuareCell(categoryInfo: CategoryInfo) {
        self.name.text = "\(categoryInfo.name ?? "")"
        self.contact.text = "\(categoryInfo.contact ?? "")"
        self.address.text = "\(categoryInfo.address ?? "")"
        self.foodList = categoryInfo.foodList ?? []
    }
}

extension SectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.foodList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCell", for: indexPath) as! FoodCell
        
        let model = self.foodList[indexPath.row]
        cell.configuareCell(foodList: model)
        return cell
    }
}

extension SectionCell : UICollectionViewDelegateFlowLayout {
    
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let itemsPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
}


