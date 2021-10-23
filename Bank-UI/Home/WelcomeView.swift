//
//  WelcomeView.swift
//  Bank-UI
//
//  Created by Raksa on 9/21/21.
//

import UIKit

class WelcomeView: UIView {
    
    let mainWelcomeView = UIView()
    let welcomeView = UIView()
    let welcomeLargeTitle = makeLabel(withText: "Hello David", fontSize: 0, fontColor: .black, fontBold: 26)
    let welcomeSubTitle = makeLabel(withText: "Welcome back !", fontSize: 0, fontColor: .lightGray, fontBold: 14)
    let filterButton = makeSymbolImageView(systemName: "qrcode.viewfinder", scale: .large)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func style(){
        
        mainWelcomeView.translatesAutoresizingMaskIntoConstraints = false
        welcomeView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLargeTitle.translatesAutoresizingMaskIntoConstraints = false
        welcomeSubTitle.translatesAutoresizingMaskIntoConstraints = false
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        
        filterButton.tintColor = .black
 
    }
    
    func layout(){
        
        addSubview(mainWelcomeView)
        mainWelcomeView.addSubview(welcomeView)
        welcomeView.addSubview(welcomeLargeTitle)
        welcomeView.addSubview(welcomeSubTitle)
        mainWelcomeView.addSubview(filterButton)
        
        NSLayoutConstraint.activate([
            mainWelcomeView.topAnchor.constraint(equalTo: topAnchor),
            mainWelcomeView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainWelcomeView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainWelcomeView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainWelcomeView.heightAnchor.constraint(equalToConstant: 60),
            
            welcomeView.topAnchor.constraint(equalTo: mainWelcomeView.topAnchor),
            welcomeView.bottomAnchor.constraint(equalTo: mainWelcomeView.bottomAnchor),
            
            welcomeLargeTitle.topAnchor.constraint(equalTo: welcomeView.topAnchor),
            welcomeLargeTitle.leadingAnchor.constraint(equalTo: welcomeView.leadingAnchor),
            
            welcomeSubTitle.topAnchor.constraint(equalTo: welcomeLargeTitle.bottomAnchor, constant: 5),
            welcomeSubTitle.leadingAnchor.constraint(equalTo: welcomeView.leadingAnchor),
            
            filterButton.trailingAnchor.constraint(equalTo: mainWelcomeView.trailingAnchor),
            filterButton.centerYAnchor.constraint(equalTo: welcomeView.centerYAnchor)
        ])
    }
    
}
