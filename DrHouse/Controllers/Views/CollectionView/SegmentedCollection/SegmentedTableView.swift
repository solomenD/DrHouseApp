//
//  Secsbgfagsd.swift
//  DrHouse
//
//  Created by Solomon  on 18.01.2023.
//

import UIKit

class SegmentedTableView: BaseView {
        
    var cells = [DetailsHomeModel]()
        
    let segmentedConrol: UISegmentedControl = {
        let sControl = UISegmentedControl(items: ["Popular", "Free Parking", "City Center"])
        sControl.selectedSegmentIndex = 0
        return sControl
    }()
    
    @objc func handlSegmentedChenge() {
        print(segmentedConrol.selectedSegmentIndex)
        
        set(cells: DetailsHomeModel.fetchCityCenter())
        tableView.reloadData()
    }
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        return view
    }()
    
}
extension SegmentedTableView {
    override func setupViews() {
        super.setupViews()
        
        segmentedConrol.addTarget(self, action: #selector(handlSegmentedChenge), for: .valueChanged)

        
        tableView.showsVerticalScrollIndicator = false
        
        tableView.separatorColor = .clear
        tableView.sectionHeaderTopPadding = 100
        tableView.rowHeight = 250
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SegmentedTableViewCell.self, forCellReuseIdentifier: SegmentedTableViewCell.reuseId)
        
        setupView(stackView)

        stackView.addArrangedSubview(segmentedConrol)
        stackView.addArrangedSubview(tableView)
    }
    
    func set(cells: [DetailsHomeModel]) {
        self.cells = cells
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

extension SegmentedTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SegmentedTableViewCell.reuseId, for: indexPath) as! SegmentedTableViewCell
        cell.mainImageView.image = cells[indexPath.row].imageName
        cell.nameLabel.text = cells[indexPath.row].name
        return cell
    }
    
    
}
