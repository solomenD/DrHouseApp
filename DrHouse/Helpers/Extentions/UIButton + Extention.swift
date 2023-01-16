//
//  UIButton + Extention.swift
//  DrHouse
//
//  Created by Solomon  on 16.01.2023.
//

import UIKit

extension UIButton {
    
    func createButton(_ button: UIButton, text: String, imageStr: String?){
        button.setTitle(text, for: .normal)
        button.setImage(UIImage(systemName: imageStr ?? ""), for: .normal)
        button.layer.cornerRadius = 17
        button.heightAnchor.constraint(equalToConstant: 34).isActive = true
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        button.tintColor = Resourses.Colors.darkGreen
        button.backgroundColor = #colorLiteral(red: 0.9607843757, green: 0.9607843757, blue: 0.9607843757, alpha: 1)
        button.setTitleColor(.black, for: .normal)

    }
}

