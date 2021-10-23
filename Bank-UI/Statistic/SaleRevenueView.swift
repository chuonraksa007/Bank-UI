//
//  SaleRevenueView.swift
//  Bank-UI
//
//  Created by Raksa on 10/3/21.
//

import UIKit

class SaleRevenueView: UIView {
    
    let mainView = UIView()
    
    let saleRevenueLabel = makeLabel(withText: "Sales Revenue", fontSize: 0, fontColor: .black, fontBold: 25)
    
    let saleView = UIView()
    let saleIcon = makeSymbolImageView(systemName: "tray.circle", scale: .large)
    let saleAmoungLabel = makeLabel(withText: "230K", fontSize: 0, fontColor: .black, fontBold: 22)
    let saleLabel = makeLabel(withText: "Sales", fontSize: 0, fontColor: .lightGray, fontBold: 12)
    
    let customerView = UIView()
    let customerIcon = makeSymbolImageView(systemName: "person.crop.circle", scale: .large)
    let customerAmoungLabel = makeLabel(withText: "8.549K", fontSize: 0, fontColor: .black, fontBold: 22)
    let customerLabel = makeLabel(withText: "Customes", fontSize: 0, fontColor: .lightGray, fontBold: 12)
    
    let productView = UIView()
    let productIcon = makeSymbolImageView(systemName: "book.circle", scale: .large)
    let productAmoungLabel = makeLabel(withText: "1.423K", fontSize: 0, fontColor: .black, fontBold: 22)
    let productLabel = makeLabel(withText: "Products", fontSize: 0, fontColor: .lightGray, fontBold: 12)
    
    let revenueView = UIView()
    let revenueIcon = makeSymbolImageView(systemName: "book.circle", scale: .large)
    let revenueAmoungLabel = makeLabel(withText: "9745$", fontSize: 0, fontColor: .black, fontBold: 22)
    let revenueLabel = makeLabel(withText: "Revenues", fontSize: 0, fontColor: .lightGray, fontBold: 12)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func style(){
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .yellow
        
        saleRevenueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        saleView.translatesAutoresizingMaskIntoConstraints = false
        saleView.layer.cornerRadius = 20
        saleView.layer.masksToBounds = true
        saleView.backgroundColor = .lightGreen
        saleAmoungLabel.translatesAutoresizingMaskIntoConstraints = false
        saleLabel.translatesAutoresizingMaskIntoConstraints = false
        saleIcon.translatesAutoresizingMaskIntoConstraints = false
        saleIcon.tintColor = .black
        
        customerView.translatesAutoresizingMaskIntoConstraints = false
        customerView.layer.cornerRadius = 20
        customerView.layer.masksToBounds = true
        customerView.backgroundColor = .lightBlue
        customerAmoungLabel.translatesAutoresizingMaskIntoConstraints = false
        customerLabel.translatesAutoresizingMaskIntoConstraints = false
        customerIcon.translatesAutoresizingMaskIntoConstraints = false
        customerIcon.tintColor = .black
        
        productView.translatesAutoresizingMaskIntoConstraints = false
        productView.layer.cornerRadius = 20
        productView.layer.masksToBounds = true
        productView.backgroundColor = .lightOrange
        productAmoungLabel.translatesAutoresizingMaskIntoConstraints = false
        productLabel.translatesAutoresizingMaskIntoConstraints = false
        productIcon.translatesAutoresizingMaskIntoConstraints = false
        productIcon.tintColor = .black
        
        revenueView.translatesAutoresizingMaskIntoConstraints = false
        revenueView.layer.cornerRadius = 20
        revenueView.layer.masksToBounds = true
        revenueView.backgroundColor = .lightGreen
        revenueAmoungLabel.translatesAutoresizingMaskIntoConstraints = false
        revenueLabel.translatesAutoresizingMaskIntoConstraints = false
        revenueIcon.translatesAutoresizingMaskIntoConstraints = false
        revenueIcon.tintColor = .black

    }
    
    func layout(){
        
        addSubview(mainView)
        
        mainView.addSubview(saleRevenueLabel)

        addSubview(saleView)
        saleView.addSubview(saleIcon)
        saleView.addSubview(saleAmoungLabel)
        saleView.addSubview(saleLabel)

        addSubview(customerView)
        customerView.addSubview(customerIcon)
        customerView.addSubview(customerAmoungLabel)
        customerView.addSubview(customerLabel)

        addSubview(productView)
        productView.addSubview(productIcon)
        productView.addSubview(productAmoungLabel)
        productView.addSubview(productLabel)

        addSubview(revenueView)
        revenueView.addSubview(revenueIcon)
        revenueView.addSubview(revenueAmoungLabel)
        revenueView.addSubview(revenueLabel)
        
        NSLayoutConstraint.activate([

            saleRevenueLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            saleRevenueLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            saleRevenueLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            saleView.topAnchor.constraint(equalTo: saleRevenueLabel.bottomAnchor, constant: 20),
            saleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            saleView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -30),
            saleView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -30),

            saleIcon.topAnchor.constraint(equalTo: saleAmoungLabel.topAnchor, constant: -35),
            saleIcon.centerXAnchor.constraint(equalTo: saleView.centerXAnchor),
            saleAmoungLabel.centerYAnchor.constraint(equalTo: saleView.centerYAnchor),
            saleAmoungLabel.centerXAnchor.constraint(equalTo: saleView.centerXAnchor),
            saleLabel.centerXAnchor.constraint(equalTo: saleView.centerXAnchor),
            saleLabel.bottomAnchor.constraint(equalTo: saleAmoungLabel.bottomAnchor, constant: 30),

            customerView.centerYAnchor.constraint(equalTo: saleView.centerYAnchor),
            customerView.leadingAnchor.constraint(equalTo: saleView.trailingAnchor, constant: 20),
            customerView.widthAnchor.constraint(equalTo: saleView.widthAnchor),
            customerView.heightAnchor.constraint(equalTo: saleView.heightAnchor),

            customerIcon.topAnchor.constraint(equalTo: customerAmoungLabel.topAnchor, constant: -35),
            customerIcon.centerXAnchor.constraint(equalTo: customerView.centerXAnchor),
            customerAmoungLabel.centerYAnchor.constraint(equalTo: saleView.centerYAnchor),
            customerAmoungLabel.centerXAnchor.constraint(equalTo: customerView.centerXAnchor),
            customerLabel.centerXAnchor.constraint(equalTo: customerView.centerXAnchor),
            customerLabel.bottomAnchor.constraint(equalTo: customerAmoungLabel.bottomAnchor, constant: 30),

            productView.topAnchor.constraint(equalTo: saleView.bottomAnchor, constant: 20),
            productView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            productView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -30),
            productView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5, constant: -30),

            productIcon.topAnchor.constraint(equalTo: productAmoungLabel.topAnchor, constant: -35),
            productIcon.centerXAnchor.constraint(equalTo: productView.centerXAnchor),
            productAmoungLabel.centerYAnchor.constraint(equalTo: productView.centerYAnchor),
            productAmoungLabel.centerXAnchor.constraint(equalTo: productView.centerXAnchor),
            productLabel.centerXAnchor.constraint(equalTo: productView.centerXAnchor),
            productLabel.bottomAnchor.constraint(equalTo: productAmoungLabel.bottomAnchor, constant: 30),

            revenueView.centerYAnchor.constraint(equalTo: productView.centerYAnchor),
            revenueView.leadingAnchor.constraint(equalTo: productView.trailingAnchor, constant: 20),
            revenueView.widthAnchor.constraint(equalTo: productView.widthAnchor),
            revenueView.heightAnchor.constraint(equalTo: productView.heightAnchor),

            revenueIcon.topAnchor.constraint(equalTo: revenueAmoungLabel.topAnchor, constant: -35),
            revenueIcon.centerXAnchor.constraint(equalTo: revenueView.centerXAnchor),
            revenueAmoungLabel.centerYAnchor.constraint(equalTo: revenueView.centerYAnchor),
            revenueAmoungLabel.centerXAnchor.constraint(equalTo: revenueView.centerXAnchor),
            revenueLabel.centerXAnchor.constraint(equalTo: revenueView.centerXAnchor),
            revenueLabel.bottomAnchor.constraint(equalTo: revenueAmoungLabel.bottomAnchor, constant: 30),
            
        ])
    }
    
}

