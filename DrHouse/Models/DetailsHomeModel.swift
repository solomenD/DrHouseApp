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
    var reting: Double
    var prise: Int
    var country: String
    
    static func featch() -> [DetailsHomeModel] {
        let firstItem = DetailsHomeModel(name: "Luxury Dream House",
                                         imageName: UIImage(named: "firstImage")!,
                                         reting: 0,
                                         prise: 0,
                                         country: "")
        let seconfItem = DetailsHomeModel(name: "Suburban Dream House",
                                          imageName: UIImage(named: "secondImage")!,
                                          reting: 0,
                                          prise: 0,
                                          country: "")
        let thirdItem = DetailsHomeModel(name: "Meami Dream",
                                         imageName:  UIImage(named: "thirthImage")!,
                                         reting: 0,
                                         prise: 0,
                                         country: "")
        let fouthItem = DetailsHomeModel(name: "Washington Style",
                                         imageName:  UIImage(named: "fouthImage")!,
                                         reting: 0,
                                         prise: 0,
                                         country: "")
        let five = DetailsHomeModel(name: "Melbourne Architecture",
                                    imageName:  UIImage(named: "fiveImage")!,
                                    reting: 0,
                                    prise: 0,
                                    country: "")
        
        return [firstItem, seconfItem, thirdItem, fouthItem, five]
    }
    
    static func fetchPopular()-> [DetailsHomeModel] {
        
        let firstItem = DetailsHomeModel(name: "Luxury Dream House",
                                         imageName: UIImage(named: "pop1")!,
                                         reting: 4.8,
                                         prise: 1200,
                                         country: "USA, Washington")
        let seconfItem = DetailsHomeModel(name: "Suburban Dream House",
                                          imageName: UIImage(named: "pop2")!,
                                          reting: 4.5,
                                          prise: 1100,
                                          country: "Canada")
        let thirdItem = DetailsHomeModel(name: "Meami Dream",
                                         imageName:  UIImage(named: "pop3")!,
                                         reting: 4.9,
                                         prise: 1300,
                                         country: "UK, London")
        let fouthItem = DetailsHomeModel(name: "Washington Style",
                                         imageName:  UIImage(named: "pop4")!,
                                         reting: 4.1,
                                         prise: 700,
                                         country: "USA, New Dgersy")
        
        return [firstItem, seconfItem, thirdItem, fouthItem]
        
    }
    
    static func fetchFreeParking()-> [DetailsHomeModel] {
        
        let firstItem = DetailsHomeModel(name: "Luxury Dream House",
                                         imageName: UIImage(named: "free1")!,
                                         reting: 4.7,
                                         prise: 1400,
                                         country: "USA, New Yorr")
        let seconfItem = DetailsHomeModel(name: "Suburban Dream House",
                                          imageName: UIImage(named: "free2")!,
                                          reting: 4.5,
                                          prise: 1300,
                                          country: "Canada")
        let thirdItem = DetailsHomeModel(name: "Meami Dream",
                                         imageName:  UIImage(named: "free3")!,
                                         reting: 4.9,
                                         prise: 1000,
                                         country: "UK, London")
        let fouthItem = DetailsHomeModel(name: "Washington Style",
                                         imageName:  UIImage(named: "pop4")!,
                                         reting: 4.1,
                                         prise: 900,
                                         country: "USA, Boston")
        
        return [firstItem, seconfItem, thirdItem, fouthItem]
        
    }
    
    static func fetchCityCenter()-> [DetailsHomeModel] {
        
        let firstItem = DetailsHomeModel(name: "Luxury Dream House",
                                         imageName: UIImage(named: "center1")!,
                                         reting: 4.8,
                                         prise: 1200,
                                         country: "USA, Washington")
        let seconfItem = DetailsHomeModel(name: "Suburban Dream House",
                                          imageName: UIImage(named: "center2")!,
                                          reting: 4.5,
                                          prise: 1100,
                                          country: "Canada")
        let thirdItem = DetailsHomeModel(name: "Meami Dream",
                                         imageName:  UIImage(named: "center3")!,
                                         reting: 4.9,
                                         prise: 1300,
                                         country: "UK, London")
        let fouthItem = DetailsHomeModel(name: "Washington Style",
                                         imageName:  UIImage(named: "pop4")!,
                                         reting: 4.1,
                                         prise: 700,
                                         country: "Poland, Wrotslav")
        
        return [firstItem, seconfItem, thirdItem, fouthItem]
        
    }
    
}
