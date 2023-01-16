//
//  BaseView.swift
//  DrHouse
//
//  Created by Solomon  on 16.01.2023.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func setupViews() {
        
    }
    func constaintViews() {
        
    }
    func configureAppearance() {
        backgroundColor = .white
        
    }
}
