//
//  HomeVC.swift
//  UITabBarControllerDemoInSwift
//
//  Created by EL Group on 25/03/19.
//  Copyright © 2019 Vijendar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    @IBAction func submitAction(_ sender: UIButton) {
        let _: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: TestViewController = storyboard!.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
