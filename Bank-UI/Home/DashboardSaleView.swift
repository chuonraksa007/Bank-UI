//
//  DashboardView.swift
//  Bank-UI
//
//  Created by Raksa on 8/30/21.
//

import UIKit

class DashboardSaleView: UIView {
    
    let mainView = UIView()
    
    let amoungView = UIView()
    let saleLabel = makeLabel(withText: "Sales", fontSize: 0, fontColor: .black, fontBold: 18)
    let totalSaleLabel = makeLabel(withText: "Total Sales Today", fontSize: 0, fontColor: .lightGray, fontBold: 10)
    let amoungLabel = makeLabel(withText: "$500", fontSize: 0, fontColor: .black, fontBold: 25)
    
    let percentageCircleView = UIView()
    let percentageLabel = makeLabel(withText: "55%", fontSize: 0, fontColor: .black, fontBold: 20)
    
    
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
        mainView.layer.cornerRadius = 20
        mainView.backgroundColor = .lightOrange
        
        amoungView.translatesAutoresizingMaskIntoConstraints = false
        
        saleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        totalSaleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        amoungLabel.translatesAutoresizingMaskIntoConstraints = false
        
        percentageCircleView.translatesAutoresizingMaskIntoConstraints = false
        percentageCircleView.layer.cornerRadius = 35
        percentageCircleView.backgroundColor = .darkOrange
        
        percentageLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func layout(){
        
        addSubview(mainView)
        mainView.addSubview(amoungView)
        amoungView.addSubview(saleLabel)
        amoungView.addSubview(totalSaleLabel)
        amoungView.addSubview(amoungLabel)
        mainView.addSubview(percentageCircleView)
        percentageCircleView.addSubview(percentageLabel)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: topAnchor),
            mainView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainView.heightAnchor.constraint(equalToConstant: 130),
            
            amoungView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            amoungView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            amoungView.widthAnchor.constraint(equalToConstant: 200),
            amoungView.heightAnchor.constraint(equalToConstant: 80),
            
            saleLabel.topAnchor.constraint(equalTo: amoungView.topAnchor),
            saleLabel.leadingAnchor.constraint(equalTo: amoungView.leadingAnchor),
            
            totalSaleLabel.topAnchor.constraint(equalTo: saleLabel.bottomAnchor, constant: 5),
            totalSaleLabel.leadingAnchor.constraint(equalTo: amoungView.leadingAnchor),
            
            amoungLabel.topAnchor.constraint(equalTo: totalSaleLabel.bottomAnchor, constant: 8),
            amoungLabel.leadingAnchor.constraint(equalTo: amoungView.leadingAnchor),
            
            percentageCircleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            percentageCircleView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            percentageCircleView.widthAnchor.constraint(equalToConstant: 70),
            percentageCircleView.heightAnchor.constraint(equalToConstant: 70),
            
            percentageLabel.centerYAnchor.constraint(equalTo: percentageCircleView.centerYAnchor),
            percentageLabel.centerXAnchor.constraint(equalTo: percentageCircleView.centerXAnchor),
            
        ])
    }
    
    
}
