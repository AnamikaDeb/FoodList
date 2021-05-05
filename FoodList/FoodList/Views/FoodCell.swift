//
//  FoodCell.swift
//  FoodList
//
//  Created by Anamika Deb on 4/5/21.
//

import Foundation
import UIKit

class FoodCell: UICollectionViewCell {
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateUI()
    }
    
    func updateUI() {
        foodImage.layer.cornerRadius = 10
        foodImage.clipsToBounds = true
    }
    
    func configuareCell(foodList: FoodList) {
        self.foodName.text = "\(foodList.name ?? "")"
        self.foodImage.image = UIImage(named:"\(foodList.image ?? "")")
    }
}
