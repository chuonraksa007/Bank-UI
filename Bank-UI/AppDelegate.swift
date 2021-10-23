//
//  AppDelegate.swift
//  Bank-UI
//
//  Created by Raksa on 8/28/21.
//

import UIKit

class BankAppViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit(){
        
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
        
    }
    
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        
        let vcHome = HomeViewController()
        let vcStatistic = StatisticViewController()
        let vcWallet = WalletViewController()
        let vcAccount = AccountViewController()
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [vcHome, vcStatistic,vcWallet, vcAccount]
        
        tabBarController.tabBar.tintColor = .menuColor
        tabBarController.tabBar.isTranslucent = false
        
        window?.rootViewController = tabBarController
        
        
        return true
    }

}

