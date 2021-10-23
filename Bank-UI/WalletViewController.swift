//
//  WalletViewController.swift
//  Bank-UI
//
//  Created by Raksa on 10/5/21.
//

import UIKit

class WalletViewController: BankAppViewController {
    
    let navBarTop = NavBarTop()
    let navBarTopLabel = makeLabel(withText: "Wallet", fontSize: 0, fontColor: .black, fontBold: 18)
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpStyle()
        setUpLayout()
        
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "wallet.pass.fill", title: "Wallet")
    }
    
    func setUpStyle() {
        
        navBarTop.translatesAutoresizingMaskIntoConstraints = false
        navBarTopLabel.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
    }
        
    func setUpLayout(){
        
        view.addSubview(navBarTop)
        navBarTop.addSubview(navBarTopLabel)
        
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)

//        for data in 1...100 {
//            let labelView = UILabel()
//
//            labelView.translatesAutoresizingMaskIntoConstraints = false
//
//            labelView.text = "Number \(data)"
//            stackView.addArrangedSubview(labelView)
//        }
        
        NSLayoutConstraint.activate([
            
            navBarTop.topAnchor.constraint(equalTo: view.topAnchor),
            navBarTop.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBarTop.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            navBarTopLabel.topAnchor.constraint(equalTo: navBarTop.topAnchor, constant: 50),
            navBarTopLabel.centerXAnchor.constraint(equalTo: navBarTop.centerXAnchor),
            
            scrollView.topAnchor.constraint(equalTo: navBarTop.topAnchor, constant: 85),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
        ])
    }
    
}

extension WalletViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        
        print(offsetY)
    }
}
