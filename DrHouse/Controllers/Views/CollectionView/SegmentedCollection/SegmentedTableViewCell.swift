//
//  SegmentedTableViewCell.swift
//  DrHouse
//
//  Created by Solomon  on 19.01.2023.
//

import UIKit

class SegmentedTableViewCell: UITableViewCell {
    
    static let reuseId = "SegmentedTableViewCell"
    
    var mainImageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        return image
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 12)
        label.textAlignment = .left
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = #colorLiteral(red: 0.9607843757, green: 0.9607843757, blue: 0.9607843757, alpha: 1)
        layer.cornerRadius = 15
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 9, height: 1)
        self.clipsToBounds = false
        
        setupView(mainImageView)
        setupView(nameLabel)
        
        setConstraintsView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraintsView() {
        
        NSLayoutConstraint.activate([
            
            mainImageView.topAnchor.constraint(equalTo: topAnchor),
            mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 4/5),
            
            nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
        
        ])
        
    }
    
}
