//
//  DetailsHomeModel.swift
//  DrHouse
//
//  Created by Solomon  on 16.01.2023.
//

import UIKit

struct DetailsHomeModel {
    
    var name: String
    var imageName: UIImage
    
    static func featch() -> [DetailsHomeModel] {
        let firstItem = DetailsHomeModel(name: "Luxury Dream House",
                                         imageName: UIImage(named: "firstImage")!)
        let seconfItem = DetailsHomeModel(name: "Suburban Dream House",
                                          imageName: UIImage(named: "secondImage")!)
        let thirdItem = DetailsHomeModel(name: "Meami Dream",
                                         imageName:  UIImage(named: "thirthImage")!)
        let fouthItem = DetailsHomeModel(name: "Washington Style",
                                         imageName:  UIImage(named: "fouthImage")!)
        let five = DetailsHomeModel(name: "Melbourne Architecture",
                                    imageName:  UIImage(named: "fiveImage")!)
        
        return [firstItem, seconfItem, thirdItem, fouthItem, five]
    }
    
}
