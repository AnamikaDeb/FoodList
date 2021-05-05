//
//  ListViewModel.swift
//  FoodList
//
//  Created by Anamika Deb on 5/5/21.
//

import Foundation
import UIKit

class ListViewModel {
    
    func getCategoryList() -> [CategoryList] {
        let categoryList:[CategoryList] = [CategoryList(name: "Family", categoryInfo: getFamilyCategoryInfo()),
            CategoryList(name: "Friends", categoryInfo: getFriendCategoryInfo())]
        
        return categoryList
    }
    
    func getFamilyCategoryInfo() -> [CategoryInfo] {
        let categoryInfo:[CategoryInfo] = [CategoryInfo(name: "Mr. Benz", contact: "0134765489", address: "121, Henz Street", foodList: getFamilyFoodList()),
            CategoryInfo(name: "Mrs. Benz", contact: "0367895437", address: "121, Henz Street", foodList: getFamilyFoodList())]
        return categoryInfo
    }
    
    func getFriendCategoryInfo() -> [CategoryInfo] {
        let categoryInfo:[CategoryInfo] = [CategoryInfo(name: "Merry", contact: "0134855489", address: "256, Ranks Street", foodList: getFriendsFoodList()),
            CategoryInfo(name: "Olivia", contact: "0363895498", address: "456, James Avenue", foodList: getFriendsFoodList())]
        return categoryInfo
    }
    
    func getFamilyFoodList() -> [FoodList] {
        let foodArray: [FoodList] = [FoodList(name: "Biryani", image: "Biryani"),
                                    FoodList(name: "Chicken Curry", image: "Chicken_Curry"),
                                    FoodList(name: "Butter Naan", image: "Butter_Naan"),
                                    FoodList(name: "Lemon Juice", image: "Lemon_Juice1"),
                                    FoodList(name: "Cocacola", image: "Cocacola")]
        return foodArray
    }
    
    func getFriendsFoodList() -> [FoodList] {
        let foodArray: [FoodList] = [FoodList(name: "Noodles", image: "Noodles"),
                                    FoodList(name: "Sandwich", image: "Sandwich"),
                                    FoodList(name: "Burger", image: "Berger"),
                                    FoodList(name: "Lemon Juice", image: "Lemon_Juice2"),
                                    FoodList(name: "Pepsi", image: "Pepsi")]
        return foodArray
    }
}

