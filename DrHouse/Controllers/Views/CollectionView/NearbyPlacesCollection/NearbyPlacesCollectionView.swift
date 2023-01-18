//
//  NearbyPlacesCollectionView.swift
//  DrHouse
//
//  Created by Solomon  on 16.01.2023.
//

import UIKit

class NearbyPlacesCollectionView: UICollectionView {
    
    var cells = [DetailsHomeModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super .init(frame: .zero, collectionViewLayout: layout)
        
        layout.minimumLineSpacing = 40
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        delegate = self
        dataSource = self
        register(NearbyPlacesCollectionViewCell.self, forCellWithReuseIdentifier: NearbyPlacesCollectionViewCell.reuseId)
        
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(cells: [DetailsHomeModel]) {
        self.cells = cells
    }
    
}

extension NearbyPlacesCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: NearbyPlacesCollectionViewCell.reuseId, for: indexPath) as! NearbyPlacesCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].imageName
        cell.nameLabel.text = cells[indexPath.row].name
        return cell
    }
}

extension NearbyPlacesCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 155, height: frame.height * 0.8)
    }
    
}
