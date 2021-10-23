//
//  StatisticViewController.swift
//  Bank-UI
//
//  Created by Raksa on 10/2/21.
//

import UIKit

class StatisticViewController: BankAppViewController {

    let navBarTop = NavBarTop()
    let navBarTopLabel = makeLabel(withText: "Statistic", fontSize: 0, fontColor: .black, fontBold: 18)
    let saleRevenueView = SaleRevenueView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        style()
        layout()
   
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "chart.bar.xaxis", title: "Statistic")
        
    }
    
    func style(){
        navBarTop.translatesAutoresizingMaskIntoConstraints = false
        navBarTopLabel.translatesAutoresizingMaskIntoConstraints = false
        
        saleRevenueView.translatesAutoresizingMaskIntoConstraints = false
    
    }
    
    func layout(){
        
        view.addSubview(navBarTop)
        navBarTop.addSubview(navBarTopLabel)
        
        view.addSubview(saleRevenueView)
        
        NSLayoutConstraint.activate([
            
            navBarTop.topAnchor.constraint(equalTo: view.topAnchor),
            navBarTop.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBarTop.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            navBarTopLabel.topAnchor.constraint(equalTo: navBarTop.topAnchor, constant: 50),
            navBarTopLabel.centerXAnchor.constraint(equalTo: navBarTop.centerXAnchor),
            
            saleRevenueView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            saleRevenueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            saleRevenueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            saleRevenueView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
}
