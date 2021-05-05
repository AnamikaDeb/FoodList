//
//  CategoryList.swift
//  FoodList
//
//  Created by Anamika Deb on 4/5/21.
//

import Foundation

struct CategoryList {
    var categoryName : String
    var categoryInfo : [CategoryInfo]? = nil
    
    
    init(name: String, categoryInfo: [CategoryInfo]) {
        self.categoryName = name
        self.categoryInfo = categoryInfo
    }
}

struct CategoryInfo {
    var name: String?
    var contact : String?
    var address: String?
    var foodList: [FoodList]?
    
    init(name: String, contact: String, address: String, foodList: [FoodList]) {
        self.name = name
        self.address = address
        self.contact = contact
        self.foodList = foodList
    }
}

struct FoodList {
    var name: String?
    var image : String?
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
