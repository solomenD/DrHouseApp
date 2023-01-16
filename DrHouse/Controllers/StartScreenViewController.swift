//
//  StartScreenViewController.swift
//  DrHouse
//
//  Created by Solomon  on 11.01.2023.
//

import UIKit

class StartScreenViewController: BaseController {
    
    private let houseImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "HouseStartScreen")
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        return image
    }()
    
    private let titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Find your \n dream house".uppercased()
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    private let appInfoLabel: UILabel = {
        var label = UILabel()
        label.text = "This application is designed to search for\n buyng or renting houses, as well as\n commercial rentals"
        label.numberOfLines = 3
        label.textAlignment = .center
        return label
    }()
    
    private let getStartButton: UIButton = {
        var button = UIButton()
        button.setTitle("Get Start", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2194117904, green: 0.4005441964, blue: 0.2485831976, alpha: 1)
        button.layer.cornerRadius = 15
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func getStartButtonTaped() {
        let homeViewComtroller = HomeViewController()
        navigationController?.pushViewController(homeViewComtroller, animated: true)
        print("get start")
    }
    
}

extension StartScreenViewController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(houseImage)
        view.setupView(titleLabel)
        view.setupView(appInfoLabel)
        view.setupView(getStartButton)
        getStartButton.addTarget(self, action: #selector(getStartButtonTaped), for: .touchUpInside)
    }
    
    override func setConstraintsView() {
        super.setConstraintsView()
        
        NSLayoutConstraint.activate([
            houseImage.topAnchor.constraint(equalTo: view.topAnchor),
            houseImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            houseImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            houseImage.heightAnchor.constraint(equalTo: houseImage.widthAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: houseImage.bottomAnchor, constant: 15),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            appInfoLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 150),
            appInfoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            getStartButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            getStartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            getStartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            getStartButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}

