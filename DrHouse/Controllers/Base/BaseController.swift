//
//  BaseController.swift
//  DrHouse
//
//  Created by Solomon  on 11.01.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraintsView()
        configureAppearance()
    }
}

@objc extension BaseController {
    
    func setupViews() {
        
    }
    
    func setConstraintsView() {
        
    }
    
    func configureAppearance() {
        view.backgroundColor = .white
    }
    
    func navBarLeftButtontHandler() {
        print("NavBar left button tapped")
    }
    
    func navBarRightButtontHandler() {
        print("NavBar right button tapped")
    }
    
    func navBarCenterButtontHandler() {
        print("NavBar center button tapped")
    }
    
}
extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String, image: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.black, for: .disabled)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 17)
        button.setImage(UIImage(systemName: image), for: .normal)
        button.tintColor = #colorLiteral(red: 0.2152793407, green: 0.3966131508, blue: 0.2446105182, alpha: 1)
        button.imageView?.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1.2)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtontHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtontHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
