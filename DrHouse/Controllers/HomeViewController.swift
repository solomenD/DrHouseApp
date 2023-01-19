//
//  HomeViewController.swift
//  DrHouse
//
//  Created by Solomon  on 11.01.2023.
//

import UIKit

class HomeViewController: BaseController, UIScrollViewDelegate{
    
    private let locationLabel: UILabel = {
        var label = UILabel()
        label.text = "Your location"
        label.textColor = .gray
        label.font = UIFont(name: "Helvetica Neue", size: 10)
        return label
    }()
    
    private let searchBar: UISearchTextField = {
        var searchBar = UISearchTextField()
        searchBar.placeholder = "Search your future apartment"
        searchBar.font = UIFont(name: "Helvetica Neue", size: 13)
        searchBar.textColor = Resourses.Colors.darkGreen
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 15
        searchBar.becomeFirstResponder()
        searchBar.frame = CGRect(x: 0, y: 0, width: 300, height: 44)
        return searchBar
    }()
    
    private let filerSearchButton: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: "filterIcon"), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8784310818, green: 0.8784316778, blue: 0.8913408518, alpha: 1)
        button.layer.cornerRadius = 10
        button.imageView?.tintColor = Resourses.Colors.darkGreen
        button.imageView?.layer.transform = CATransform3DMakeScale(0.8, 0.8, 0.7)
        return button
    }()
    
    private let countryButton: UIButton = {
        let button = UIButton()
        button.setTitle("Venice", for: .normal)
        button.tintColor = Resourses.Colors.darkGreen
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        button.imageView?.layer.transform = CATransform3DMakeScale(0.8, 0.7, 0.7)
        button.setTitleColor(Resourses.Colors.darkGreen, for: .normal)
        return button
    }()

    private let stackView = UIStackView()
    
    private let stackSearchView = UIStackView()
    
    private lazy var scrollHomeView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .white
        return view
    }()
    
    private let buyHouseButton: UIButton = {
       let button = UIButton()
        button.createButton(button, text: "Buy a House", imageStr: "house.fill")
        return button
    }()
    
    private let buyFlatButton: UIButton = {
       let button = UIButton()
        button.createButton(button, text: "Buy a Flat", imageStr: "building.2.fill")
        return button
    }()
    
    private let rentButton: UIButton = {
       let button = UIButton()
        button.createButton(button, text: "Rent Apartment", imageStr: "house.and.flag.fill")
        return button
    }()
    
    private let naerbyPlacesLabel: UILabel = {
        let label = UILabel()
        label.text = "Nearby Places"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 16)
        return label
    }()
    
    private let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("More", for: .normal)
        button.titleLabel?.font = UIFont(name: "Palatino-Italic", size: 16)
        button.setTitleColor(Resourses.Colors.darkGreen, for: .normal)
        return button
    }()
    
    private var nearbyPlaceColletcion = NearbyPlacesCollectionView()
    
    private var segmentedControlView = SegmentedTableView()
    
    private let testlocationLabel: UILabel = {
        var label = UILabel()
        label.text = "Вы заметили, что iOS 11 добавила пару новых руководств по макету в UIScrollView? Если вы обнаружите, что использование автоматической компоновки с прокруткой сбивает с толку, они могут помочь вам вспомнить, как добавить зависимости.read a great post recently by Agnes Vasarhelyi on Scrollable UIStackView which describes setting up constraints for a scroll view. It reminded me that I meant to take a look at the new layout guides Apple added to UIScrollView in iOS 11 to see if they make the setup any easier to understand.Давайте сначала резюмируем классический способ настройки ограничений с помощью прокрутки.Просмотры Прокрутки - Классическая НастройкаВот мой макет для прогноза погоды. Вид имеет метку заголовка, изображение и метку описания. Обе метки используют динамический тип, что означает, что высота моего представления может резко измениться, поэтому его нужно прокручивать вертикально:Вы заметили, что iOS 11 добавила пару новых руководств по макету в UIScrollView? Если вы обнаружите, что использование автоматической компоновки с прокруткой сбивает с толку, они могут помочь вам вспомнить, как добавить зависимости.read a great post recently by Agnes Vasarhelyi on Scrollable UIStackView which describes setting up constraints for a scroll view. It reminded me that I meant to take a look at the new layout guides Apple added to UIScrollView in iOS 11 to see if they make the setup any easier to understand.Давайте сначала резюмируем классический способ настройки ограничений с помощью прокрутки.Просмотры Прокрутки - Классическая НастройкаВот мой макет для прогноза погоды. Вид имеет метку заголовка, изображение и метку описания. Обе метки используют динамический тип, что означает, что высота моего представления может резко измениться, поэтому его нужно прокручивать вертикально:"
        label.textColor = .gray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica Neue", size: 20)
        return label
    }()

}

extension HomeViewController {
    override func setupViews() {
        super.setupViews()
        view.setupView(stackSearchView)
        view.setupView(scrollHomeView)
        scrollHomeView.setupView(buyHouseButton)
//        scrollHomeView.setupView(testlocationLabel)
        scrollHomeView.setupView(buyFlatButton)
        scrollHomeView.setupView(rentButton)
        scrollHomeView.setupView(naerbyPlacesLabel)
        scrollHomeView.setupView(moreButton)
        scrollHomeView.setupView(nearbyPlaceColletcion)
        scrollHomeView.setupView(segmentedControlView)
        
    }

    override func setConstraintsView() {
        super.setConstraintsView()
        
         let contentGuide = scrollHomeView.contentLayoutGuide
        
        NSLayoutConstraint.activate([

            contentGuide.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
//            contentGuide.topAnchor.constraint(equalTo: testlocationLabel.topAnchor),
            contentGuide.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            contentGuide.bottomAnchor.constraint(equalTo: scrollHomeView.bottomAnchor,constant: 120),
                        
            filerSearchButton.widthAnchor.constraint(equalToConstant: 35),
            filerSearchButton.heightAnchor.constraint(equalToConstant: 35),
            
            stackSearchView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 0),
            stackSearchView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            stackSearchView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
            stackSearchView.heightAnchor.constraint(equalToConstant: 50),
            
            scrollHomeView.topAnchor.constraint(equalTo: stackSearchView.bottomAnchor,constant: 10),
            scrollHomeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            scrollHomeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            scrollHomeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 16),
            
            buyHouseButton.topAnchor.constraint(equalTo: scrollHomeView.topAnchor),
            buyHouseButton.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
            buyHouseButton.widthAnchor.constraint(equalToConstant: 140),
            
            buyFlatButton.topAnchor.constraint(equalTo: scrollHomeView.topAnchor),
            buyFlatButton.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            buyFlatButton.widthAnchor.constraint(equalToConstant: 140),
            
            rentButton.topAnchor.constraint(equalTo: buyHouseButton.bottomAnchor,constant: 12),
            rentButton.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            rentButton.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
            
            naerbyPlacesLabel.topAnchor.constraint(equalTo: rentButton.bottomAnchor,constant: 18),
            naerbyPlacesLabel.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
            
            moreButton.topAnchor.constraint(equalTo: naerbyPlacesLabel.topAnchor),
            moreButton.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            
            nearbyPlaceColletcion.topAnchor.constraint(equalTo: naerbyPlacesLabel.bottomAnchor),
            nearbyPlaceColletcion.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            nearbyPlaceColletcion.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
            nearbyPlaceColletcion.heightAnchor.constraint(equalToConstant: 200),
//            
            segmentedControlView.topAnchor.constraint(equalTo: nearbyPlaceColletcion.bottomAnchor,constant: 8),
            segmentedControlView.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
            segmentedControlView.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
            segmentedControlView.heightAnchor.constraint(equalToConstant: 500),
            
            
//            testlocationLabel.topAnchor.constraint(equalTo: segmentedControlView.bottomAnchor, constant: 50),
//            testlocationLabel.leadingAnchor.constraint(equalTo: scrollHomeView.leadingAnchor),
//            testlocationLabel.trailingAnchor.constraint(equalTo: scrollHomeView.trailingAnchor),
//            testlocationLabel.widthAnchor.constraint(equalTo: scrollHomeView.widthAnchor)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
                
        scrollHomeView.alwaysBounceVertical = true
        scrollHomeView.showsVerticalScrollIndicator = false
            
        extendedLayoutIncludesOpaqueBars = true
        
        addNavBarButton(at: .left, with: "", image: "line.3.horizontal")
        addNavBarButton(at: .right, with: "", image: "person.circle")
        
        countryButton.showsMenuAsPrimaryAction = true
        countryButton.menu = makeDropMenu()
        
        filerSearchButton.addTarget(self, action: #selector(filerSearchButtonTapped), for: .touchUpInside)
                
        stackSearchView.addArrangedSubview(searchBar)
        stackSearchView.addArrangedSubview(filerSearchButton)
        stackSearchView.spacing = 10
        stackSearchView.axis = .horizontal
        stackSearchView.alignment = .center
        
        stackView.addArrangedSubview(locationLabel)
        stackView.addArrangedSubview(countryButton)
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        navigationItem.titleView = stackView
 
        //MARK: - Configure Deteil Model
        
        nearbyPlaceColletcion.set(cells: DetailsHomeModel.featch())
        
        segmentedControlView.set(cells: DetailsHomeModel.fetchFreeParking())
        
    }

    //MARK: - Button Tapped objc functions
    
    @objc func setCountryButtonTapped() {
        print("Set coutry")
    }
    
    @objc func filerSearchButtonTapped() {
        print("Filer search button tapped")
    }
    
    //MARK: - Change country
    
    func makeDropMenu()-> UIMenu {
        let ukraine = UIAction(title: "Ukraine") { _ in
            self.countryButton.setTitle("Ukraine", for: .normal)
        }
        let usa = UIAction(title: "USA") { _ in
            self.countryButton.setTitle("USA", for: .normal)
        }
        let canada = UIAction(title: "Canada") { _ in
            self.countryButton.setTitle("Canada", for: .normal)
        }
        let germany = UIAction(title: "Germany") { _ in
            self.countryButton.setTitle("Germany", for: .normal)
        }
        
        return UIMenu(title: "", children: [ukraine, usa, canada, germany])
    }
}
