//
//  Secsbgfagsd.swift
//  DrHouse
//
//  Created by Solomon  on 18.01.2023.
//

import UIKit

class SegmentedTaableView: BaseView {
    
    let segmentedConrol: UISegmentedControl = {
        let sControl = UISegmentedControl(items: ["Popular", "Free Parking", "City Center"])
        sControl.selectedSegmentIndex = 0
        return sControl
    }()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        return view
    }()
    
}
extension SegmentedTaableView {
    override func setupViews() {
        super.setupViews()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setupView(stackView)

        stackView.addArrangedSubview(segmentedConrol)
        stackView.addArrangedSubview(tableView)
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}

extension SegmentedTaableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
    }
    
    
}
