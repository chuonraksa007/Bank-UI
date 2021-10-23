//
//  HeaderView.swift
//  Bank-UI
//
//  Created by Raksa on 8/28/21.
//

import UIKit

class HeaderView: UIView {
    
    let mainHeaderView = UIView()
    
    let menuLeftIcon = makeSymbolImageView(systemName: "circle.grid.2x2", scale: .large)
    
    let profilePhotoRightImageView = UIView()
    let profilePhotoRightImage = makeImageView(name: "user")
    

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func style(){
        
        mainHeaderView.translatesAutoresizingMaskIntoConstraints = false
        menuLeftIcon.translatesAutoresizingMaskIntoConstraints = false
        profilePhotoRightImageView.translatesAutoresizingMaskIntoConstraints = false
        
        menuLeftIcon.tintColor = .black

        profilePhotoRightImageView.backgroundColor = .white
        profilePhotoRightImageView.layer.borderWidth = 1
        profilePhotoRightImageView.layer.borderColor = UIColor.lightGray.cgColor
        profilePhotoRightImageView.layer.cornerRadius = 12
        
        profilePhotoRightImage.layer.cornerRadius = 7
        
    }
    
    func layout(){
        
        addSubview(mainHeaderView)
        
        mainHeaderView.addSubview(menuLeftIcon)
        
        mainHeaderView.addSubview(profilePhotoRightImageView)
        profilePhotoRightImageView.addSubview(profilePhotoRightImage)
        
        NSLayoutConstraint.activate([
            
            mainHeaderView.topAnchor.constraint(equalTo: topAnchor),
            mainHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainHeaderView.heightAnchor.constraint(equalToConstant: 50),
            
            menuLeftIcon.leadingAnchor.constraint(equalTo: mainHeaderView.leadingAnchor),
            
            profilePhotoRightImageView.trailingAnchor.constraint(equalTo: mainHeaderView.trailingAnchor),
            profilePhotoRightImageView.heightAnchor.constraint(equalToConstant: 45),
            profilePhotoRightImageView.widthAnchor.constraint(equalToConstant: 45),
            profilePhotoRightImageView.centerYAnchor.constraint(equalTo: menuLeftIcon.centerYAnchor),
            
            profilePhotoRightImage.heightAnchor.constraint(equalToConstant: 30),
            profilePhotoRightImage.widthAnchor.constraint(equalToConstant: 30),
            profilePhotoRightImage.centerYAnchor.constraint(equalTo: profilePhotoRightImageView.centerYAnchor),
            profilePhotoRightImage.centerXAnchor.constraint(equalTo: profilePhotoRightImageView.centerXAnchor),
            
            
        ])
    }
    
}
