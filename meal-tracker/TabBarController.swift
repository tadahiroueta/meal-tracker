//
//  TabBarController.swift
//  meal-tracker
//
//  Created by Ueta, Lucas T on 4/10/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewControllers([UINavigationController(rootViewController: FoodTableViewController())], animated: true)
    }
}
