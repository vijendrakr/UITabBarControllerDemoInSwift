//
//  TabBarViewController.swift
//  UITabBarControllerDemoInSwift
//
//  Created by EL Group on 25/03/19.
//  Copyright © 2019 Vijendar. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpTabBarController()
    }
    
    func setUpTabBarController() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeVC: HomeVC = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        homeVC.title = "Home"
        homeVC.view.backgroundColor =  UIColor.red
        homeVC.tabBarItem = self.setTabBarItems(selectedimage: "iconHomeSelected", unselectedImage: "iconHome", title: "Home", tag: 0)
        
        let statsVC: StatsVC = storyBoard.instantiateViewController(withIdentifier: "StatsVC") as! StatsVC
        statsVC.title = "Stats"
        statsVC.view.backgroundColor =  UIColor.green
        statsVC.tabBarItem = self.setTabBarItems(selectedimage: "iconHomeSelected", unselectedImage: "iconHome", title: "Stats", tag: 1)
        
        let controllerArray = [homeVC, statsVC]
        self.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
        
        
        
    }
    
    func setTabBarItems( selectedimage:String, unselectedImage:String, title:String, tag:Int) -> UITabBarItem {
        // You can also set title font and color here
        
        let selectedIcon:UIImage = UIImage(named: selectedimage as String)!
        
        let unSelectedIcon:UIImage = UIImage(named: unselectedImage as String)!
        
        let tabBarItem = UITabBarItem.init(title: title, image: unSelectedIcon, selectedImage: selectedIcon)
        
        // tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0) [use this where there is no title for tabbar item to position the image perfectly]
        
        tabBarItem.tag = tag
        return tabBarItem
    }

}
