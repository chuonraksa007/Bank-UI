//
//  HomeViewController.swift
//  Bank-UI
//
//  Created by Raksa on 8/28/21.
//

import UIKit

class HomeViewController: BankAppViewController {
    
    let headerView = HeaderView()
    let welcomeView = WelcomeView()
    let dashboardSaleView = DashboardSaleView()
    let dashboardProfitView = DashboarProfitView()
    let dashboardOrderView = DashboardOrderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setTabBarImage(imageName: "house.fill", title: "Home")
        style()
        layout()
        
    }
    
    func style(){
        headerView.translatesAutoresizingMaskIntoConstraints = false
        welcomeView.translatesAutoresizingMaskIntoConstraints = false
        dashboardSaleView.translatesAutoresizingMaskIntoConstraints = false
        dashboardProfitView.translatesAutoresizingMaskIntoConstraints = false
        dashboardOrderView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout(){
        
        view.addSubview(headerView)
        view.addSubview(welcomeView)
        view.addSubview(dashboardSaleView)
        view.addSubview(dashboardProfitView)
        view.addSubview(dashboardOrderView)
        
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            welcomeView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 70),
            welcomeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            welcomeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            dashboardSaleView.topAnchor.constraint(equalTo: welcomeView.bottomAnchor, constant: 50),
            dashboardSaleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            dashboardSaleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            dashboardProfitView.topAnchor.constraint(equalTo: dashboardSaleView.bottomAnchor, constant: 150),
            dashboardProfitView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            dashboardProfitView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            dashboardOrderView.topAnchor.constraint(equalTo: dashboardProfitView.bottomAnchor, constant: 150),
            dashboardOrderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            dashboardOrderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            
        ])
        
    }
}

