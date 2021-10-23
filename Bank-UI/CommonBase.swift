//
//  CommonBase.swift
//  Bank-UI
//
//  Created by Raksa on 8/28/21.
//

import UIKit
    
func makeSymbolImageView(systemName: String, scale: UIImage.SymbolScale = .large) -> UIImageView {
        
    let configuration = UIImage.SymbolConfiguration(scale: scale)
    let image = UIImage(systemName: systemName, withConfiguration: configuration)
        
    return UIImageView(image: image)
}

func makeImageView(name: String) -> UIImageView {
        
    let image = UIImageView()
    image.image = UIImage(named: name)
    image.contentMode = .scaleAspectFill
    image.layer.masksToBounds = true
    image.translatesAutoresizingMaskIntoConstraints = false
    
    return image
}

func makeButtonWithTextImage(withText textAbove: String, textBelow: String) -> UIButton{
    let buttonCard = UIButton()
    buttonCard.translatesAutoresizingMaskIntoConstraints = false
    buttonCard.setTitle(textAbove, for: .normal)
    buttonCard.setTitle(textBelow, for: .normal)
    buttonCard.backgroundColor = .green
    buttonCard.setTitleColor(.black, for: .normal)
    buttonCard.contentEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    return buttonCard
}

func makeLabel(withText text:String, fontSize: CGFloat, fontColor: UIColor, fontBold: CGFloat) -> UILabel {
    let TitleLabel = UILabel()
    TitleLabel.translatesAutoresizingMaskIntoConstraints = false
    TitleLabel.text = text
    TitleLabel.font = UIFont.systemFont(ofSize: fontSize)
    TitleLabel.font = UIFont.boldSystemFont(ofSize: fontBold)
    TitleLabel.textColor = fontColor
    
    return TitleLabel
}

extension UIColor {
    static let lightOrange = UIColor(red: 255/255, green: 239/255, blue: 226/255, alpha: 1)
    static let darkOrange = UIColor(red: 237/255, green: 151/255, blue: 88/255, alpha: 0.3)
    static let lightGreen = UIColor(red: 238/255, green: 252/255, blue: 239/255, alpha: 1)
    static let darkGreen = UIColor(red: 123/255, green: 224/255, blue: 128/255, alpha: 0.3)
    static let lightBlue = UIColor(red: 230/255, green: 245/255, blue: 250/255, alpha: 1)
    static let darkBlue = UIColor(red: 115/255, green: 192/255, blue: 220/255, alpha: 0.3)
    static let navBarTopBackgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 0.7)
    static let menuColor = UIColor(red: 136/255, green: 209/255, blue: 233/255, alpha: 1)
}

class NavBarTop: UIView {
    
    let navBarTop = UIView()
 
    override init(frame: CGRect) {
        super.init(frame: .zero)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func style(){
        navBarTop.translatesAutoresizingMaskIntoConstraints = false
        navBarTop.backgroundColor = .navBarTopBackgroundColor
        
    }
    
    func layout(){
        
        addSubview(navBarTop)
        
        NSLayoutConstraint.activate([
            navBarTop.topAnchor.constraint(equalTo: topAnchor),
            navBarTop.leadingAnchor.constraint(equalTo: leadingAnchor),
            navBarTop.trailingAnchor.constraint(equalTo: trailingAnchor),
            navBarTop.heightAnchor.constraint(equalTo: heightAnchor, constant: 90)
        ])

    }

}
    

