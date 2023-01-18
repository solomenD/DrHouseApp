//
//  File.swift
//  DrHouse
//
//  Created by Solomon  on 11.01.2023.
//

import UIKit

extension UIView {
    
    func setupView(_ view: UIView){
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }

}

extension UIImageView {
    
    func roundCornerView(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
