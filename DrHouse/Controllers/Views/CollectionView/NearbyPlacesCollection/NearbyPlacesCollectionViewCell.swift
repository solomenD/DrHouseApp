//
//  NearbyPlacesCollectionViewCell.swift
//  DrHouse
//
//  Created by Solomon  on 16.01.2023.
//

import UIKit

class NearbyPlacesCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "NearbyPlacesCollectionViewCell"
    
    let mainImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return imageView
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 12)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView(mainImageView)
        setupView(nameLabel)
        
        backgroundColor = #colorLiteral(red: 0.9607843757, green: 0.9607843757, blue: 0.9607843757, alpha: 1)
        layer.cornerRadius = 15
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 9, height: 1)
        self.clipsToBounds = false
        
        NSLayoutConstraint.activate([
            mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainImageView.topAnchor.constraint(equalTo: topAnchor),
            mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 4/5),
            
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
