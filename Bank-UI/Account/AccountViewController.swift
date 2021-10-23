//
//  AccountViewController.swift
//  Bank-UI
//
//  Created by Raksa on 10/22/21.
//

import UIKit

class AccountViewController: BankAppViewController {
    
    let topNavBar = NavBarTop()
    let navBarTopLabel = makeLabel(withText: "Account", fontSize: 0, fontColor: .black, fontBold: 18)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
    
    override func commonInit() {
           setTabBarImage(imageName: "person.fill", title: "Account")
       }
    
    func style() {
        topNavBar.translatesAutoresizingMaskIntoConstraints = false
        navBarTopLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        
        view.addSubview(topNavBar)
        topNavBar.addSubview(navBarTopLabel)
        
        NSLayoutConstraint.activate([
            topNavBar.topAnchor.constraint(equalTo: view.topAnchor),
            topNavBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topNavBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            navBarTopLabel.topAnchor.constraint(equalTo: topNavBar.topAnchor, constant: 50),
            navBarTopLabel.centerXAnchor.constraint(equalTo: topNavBar.centerXAnchor),
        ])
        
    }

}
